---
title: "Installation"
permalink: "/installation"
# toc: true
---

> Attention: If someone delegated you his vote, you don't have to install anything! Just go to [Voting Page](/voting-page/). You can find instructions on using the voting page here: [/beginners/voting-using-voter-page]({{ "/beginners/voting-using-voter-page" | relative_url }}).

Here you can find an easiest instalation & setup of WISE **for delegators**.



1. **Install NodeJS** (and npm). https://nodejs.org/en/ . If you have NodeJS installed you don't have to install npm separately They are already bundled together.

   

2. **Install the "wise" cli tool** using npm

```bash
$ npm install -g steem-wise-cli
```



3. **Setup wise configuration files**. You can do a global installation or a local installation. Just type "wise init", and it will guide you through the setup.

```bash
$ wise init --global # puts wise config files in ~/.wise/
# or:
$ wise init # puts wise config files in cwd (".")
prompt: Enter your steem username (without @):  jblew
prompt: Would you like to store your posting key in the config file or type it manually for every command? Type "true" to save or "false" to be asked for it in every command.:  false
--- Settings: ---
{
  "wisePath": ". (...)",
  "configPath": "./config.yml (...)",
  "rulesPath": "./rules.yml (...)",
  "syncedBlockNumPath": "./synced-block-num.txt (...)",
  "username": "jblew",
  "savePostingKey": false,
  "postingKey": ""
}
------
Fetching HEAD block number...
HEAB block number is 25343089
Writing ./config.yml
Writing ./synced-block-num.txt
Writing ./rules.yml
Done
Wise successfully set up in '.'. Now you have to do two more actions to start the daemon: 
  1. Run 'wise sync-rules' to publish the rules to the blockchain.
  2. Run 'wise daemon' to start the daemon.
 That's all what is required for the daemon to work. If you would like a more complex setup 
 (e.g. Docker compose) please refer to the "The Wise Manual".
```

_If you type "true" in the second question, you will be asked for your posting key, and then the key will be written to the config file. Otherwise (if you select false) — you will be prompted for the posting key once in every command. The key will be stored only in RAM memory which provides reasonable security. The password prompt hides the password so that it will not appear in your terminal nor bash logs.._



4. **Synchronise the rules** This will send the rules from *rules.yml* file to the blockchain. If you would like to change the rules, please edit rules.yml file. Instructions on writing the rules and list of available rules are available here:  [advanced/synchronising-rules]({{ "/advanced/synchronising-rules" | relative_url }}).

```bash
$ wise sync-rules
(...)
[syncing a rule][100%]: Done updating rules.
Rules updated: [b=25343299, tx=44, op=0]
```



5. **Run the daemon**. This is the very basic mode of running the daemon (without docker). Info on more advanced modes and settings can be found here: [/advanced/daemon]({{ "/advanced/daemon" | relative_url }}).

```bash
$ wise daemon
Synchronization starting at: [b=25342759, tx=0, op=0]
Processed block 25342759
Processed block 25342760
Processed block 25342761
...

```



That's all! You now have a running daemon.

**Important:** You CAN change rules in the rules.yml file and run `wise sync-rules` while the daemon is running. You **don't have to stop the daemon**. It will fetch the updated rules from the blockchain automatically.



If you have any questions feel free to ask: [/help]({{ "/help" | relative_url }}).

Thank you for using Wise!
