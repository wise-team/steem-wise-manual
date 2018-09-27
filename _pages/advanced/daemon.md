---
title: "Running the Daemon"
permalink: "/advanced/daemon"
# toc: true
---

The daemon is a script that reads subsequent steem blocks in order and looks for voteorders from voters you delegted to. When is comes across a voteorder it validates the rules and checks if it is compliant with them. When all the rules of the ruleset specified in the voteorder are satisfied, a vote is cast. Otherwise a confirm_vote operation (accepted=false) is sent to blockchain. It contains an information why the voteorder was rejected.



## **First please read the [easiest tutorial on how to start delegating in Wise]({{ "/installation" | relative_url }})**.



## The daemon

How does the daemon work? Here is the sequence of work of the daemon:

1. It determines the number of block to start from:

   1. It checks if the block number was passed as a parameter (eg. `wise daemon 30184103`).
   2. If it was not, the daemon looks for "synced-block-num.txt" file (1. value specified in config, 2. $PWD/synced-block-num.txt)
   3. If the file is not available, it checks if the delegator has sent a confirm_vote operation and starts from that operation (this was the last confirmed/rejected voteorder if you had run the daemon before)
   4. If the delegator had never confirmed/rejected any voteorder, it starts from the first block when wise appeared on the blockchain (probably in the future it will be changed to the number of current block).

   *Notice: If you initialised wise environment with `wise init` command, it already created synced-block-num.txt file. The file was initialised with the current block number. So the daemon will start from the block that was the current block at the time of running the `wise init` command.*

2. It downloads rulesets from account_history of the delegator. *Note that a **voteorder is validated against the rulesets (and their versions) that were available at the moment of sending that voteorder.*** 

   *Imagine a situation: (1) you set a ruleset for @jblew, but you do not start the daemon, (2) @jblew sends a voteorder, (3) you delete the ruleset, so that jblew can no longer vote, (4) you start the daemon. ;; What does the daemon do? Of course it accepts the voteorder. Because at the moment of sending the voteorder there was a ruleset for @jblew.*

3. It reads the first block (with the obtained number of block + 1). It looks for send_voteorder and set_rules operations that has delegator=you.

   1. When send_voteorder operation checks in, the daemon:
      1. Checks if specified ruleset existed at the moment when the voteorder was sent
      2. Reads the ruleset
      3. Starts the Validator, and validates the voteorder against rules in that ruleset
      4. If all rules are satisfied it casts the vote, and sends confirm_vote with accepted=true
      5. If validation outcome of at least one of the rules is negative, a confirm_vote without a vote is sent to blockchain. It has fields accepted=false, and msg="... the reason why this voteorder was rejected ...".
   2. When the daemon comes across set_rules operation it updates the internal array of rules. Thanks to that, **you don't have to stop the daemon to upload new rules**.

4. When processing transactions from the block is finished, the daemon writes the number of processed block to the "synced-block-num.txt" (or whatever path is set in the config) file. When you stop the daemon, and then start it again, it will continue processing blocks from that point.

5. It reads the next block, and so on until you stop.



## Running the daemon

Here you will find the suplement information to the above tutorial. There are two ways of running wise daemon:

- the **classic mode**: you install nodeJS, wise cli, setup an environment and then run the daemon.
- the **docker mode**: you do not have to install anything. Just clone the repository, edit the docker-compose.yml and do docker-compose up. Scroll down this page for the tutorial on the docker mode.



## Classic mode of running the daemon

### Requirements

The shortest way to start is to read the [delegator tutorial]({{ "/installation" | relative_url }}), but if you want do deep dive into becoming a delegator this page is for you.

To start delegating you need to install Wise Cli first, write and upload the rules:

1. [Wise cli installation]({{ "/advanced/cli" | relative_url }})
2. Do `$ wise init` (this is an interactive prompt that will guide you through creating the configuration)
3. [Write your rules]({{ "/rules" | relative_url }}) to the rules.yml file (There are few examples on the bottom of that page. More complex and real-life examples can be found in the [/samples/rules dir in steem-wise-cli repository](https://github.com/wise-team/steem-wise-cli/tree/master/samples/rules))
4. [Upload the rules]({{ "/advanced/synchronising-rules" | relative_url }})



### Start the daemon

Simply do:

```bash
$ wise daemon
# that is all
```

That is all. The daemon loops through all the block since the specified one looking for wise transactions sent by you or your voters. When it comes across a voteorder — it runs validation of the rules. If the validation is passed, the vote is cast, and confirmation is sent to the blockchain. If the validation fails — a confirm_vote is placed on the blockchain with an information why the voteorder was rejected.

Remember, that you can change and syhchronise the rules while the daemon is operating. There is no need to shut it down for rules synchronisation. The daemon will fetch your new rules and validate the subsequent voteorders using the new rules. Rules are deterministic, which means that they have their place on the blockchain timeline which is marked with a block number and transaction number. A voteorder is always validated using the rules that were the most up-to-date rules at the moment (block_num, trx_num) of the voteorder.

After each processed block the daemon saves the number of the block to the file that is specified in config.yml. The default path is "./synced-block-num.txt". When you resume the daemon — it reads the file and continues processing starting at theblock with number: read value plus one.



## Docker mode of running the daemon

This is very a very handy way to run the daemon. You do not need to install anything. Docker image is not accessible through Docker hub, but you need only to clone the steem-wise-cli repository, **adjust the settings in docker-compose.yml file** (enter your username and posting key) and exec `docker-compose up`. That is all, what is needed to have a running daemon!



```bash
# First, clone the repo
$ git clone https://github.com/wise-team/Steem-wise-cli
$ cd Steem-wise-cli

# Enter (1) username and (2) posting key, (3) current block number as WISE_DEFAULT_SYNC_START_BLOCK_NUM (you can find what is current block e.g. num at steemd.com)
$ nano docker-compose.yml

# Run it! : The preferred way to run it is to use docker-compose (as it requires some config, and a volume). Iterating over blocks is quite slow (~ 3-6x), so it is good idea to adjust WISE_DEFAULT_SYNC_START_BLOCK_NUM in docker-compose.yml file, which will be used if the compose stack is run for the first time.
$ docker-compose up
```

Here is how the docker-compose.yml file looks like:

```yaml
version: "3"
services:
  wise-daemon:
    build:
      context: .
      dockerfile: Dockerfile
    command: bash -c "wise sync-rules rules.json && wise daemon"
    environment:
      WISE_STEEM_USERNAME: guest123
      WISE_STEEM_POSTINGWIF: 5JRaypasxMx1L97ZUX7YuC5Psb5EAbF821kkAGtBj7xCJFQcbLg
      WISE_DEFAULT_SYNC_START_BLOCK_NUM: 23085852
    volumes:
      - ${PWD}/samples/sample-rules.json:/app/rules.json:ro
      - wise_synced_block_num_volume:/wise-synced-block-num.txt
volumes:
  wise_synced_block_num_volume:
```

A block number that you can see above is the number of block, in which there is the first WISE transaction. See: it all started in a memorable 23085852 :D . If you are running the daemon for the first time - change it to the number of an recent block. Thenks to that you will not have to wait for a long time until the daemon comes to current blocks. It is important to change this env BEFORE YOU RUN THE DAEMON. After starting the daemon docker-compose creates a volume (named `wise_synced_block_num_volume`) that holds the number of block. If you would like to **change the number of block that will be synchronised**: delete that volume (`docker volume rm wise_synced_block_num_volume`) , change the value in docker-compose.yml file and run docker-compose up once again.

