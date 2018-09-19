---
title: "The CLI tool"
permalink: "/advanced/cli"
# toc: true
---

WISE system can be used in two ways. The easy way is the Voter page and the Wise Platform which is under construction. On the other hand — there is a CLI tool, which is the advanced yet more powerful way of using Wise.

The CLI tool is a CLI frontend for the Wise library and allows to perform all wise operations including syncing the rules and running the daemon. It is intended to be used mostly by the delegators, but you can also send voteorders and download rules of other users using it.

Here is a description of what you can do using Wise cli. For more information please go to the [README of steem-wise-cli](https://github.com/noisy-witness/steem-wise-cli/blob/master/README.md).



## Installation

NodeJS (version 9+ is required): 

1. `$ Cd` to destination directory
2.  `$ npm install -g steem-wise-cli`
3. `$ wise init` - creates the configuration files ([see wise init options](https://github.com/noisy-witness/steem-wise-cli/blob/master/README.md#initialising-config-wise-init))

Now you can upload the rules (rules can be changed in rules.yml file) with `$ wise sync-rules`. When you are finished with uploading rules, run the daemon that will synchronise voteorders from your voters using ` $ wise daemon`.



## Using

Available commands and options are described in detail in the [README of steem-wise-cli](https://github.com/noisy-witness/steem-wise-cli/blob/master/README.md). 

In a short, with wise cli you can:

- [Upload](https://github.com/noisy-witness/steem-wise-cli/blob/master/README.md#uploading-rules-wise-upload-rules) and [download](https://github.com/noisy-witness/steem-wise-cli/blob/master/README.md#downloading-rules-wise-download-rules) the rules
- [Send voteorder](https://github.com/noisy-witness/steem-wise-cli/blob/master/README.md#sending-a-voteorder-wise-send-voteorder)
- [Run the daemon](https://github.com/noisy-witness/steem-wise-cli/blob/master/README.md#running-the-daemon-wise-daemon). More about running the daemon can be found in ['Running the daemon' section]({{ "/advanced/daemon" | relative_url }})

The CLI tool makes it possible to run the daemon in a Docker container. There is already predefined Dockerfile and docker-compose. See [running the daemon in docker mode](https://github.com/noisy-witness/steem-wise-cli/blob/master/README.md#wise-daemon-in-docker-mode).