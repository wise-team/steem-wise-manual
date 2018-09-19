---
title: "Synchronising rules"
permalink: "/advanced/synchronising-rules"
# toc: true
---

> This page describes how to synchronise: upload and download the rules to/from blockchain. To see 
> description and examples of the rules go to [rules section]({{ site.url }}{{ site.baseurl }}/rules).



To upload or download the rules you need the cli tool. [Read how to install it]({{ "/advanced/cli" | relative_url }}). 

> When the Wise platform is finished, no cli will be needed to upload the rules. It will allow to upload rules and delegate without installing the cli and running the daemon. Read more about the [Wise platform]({{ "/beginners/platform" | relative_url }}).



## Defining rules

To upload rules you need the rules.yml file (or rules.json file). The easiest way to start is to use `$ wise init`. This will create config.yml and sample rules.yml. It will ask you all the necessary questions. You can also write the rules.yml file by yourself. 

Below is an example rules.yml file. Please read the [rules section]({{ "/rules" | relative_url }}) to learn how to write rules.yml manually.



## Uploading rules

To upload rules just type:

```bash
$ wise upload-rules
```

If you don't specify the rules file or inline JSON, the default source is "./rules.yml". If you want to use different source file type `$ wise upload-rules my-custom-rules.yml`.

Read more about the [*upload-rules* command](https://github.com/noisy-witness/steem-wise-cli/blob/master/README.md#uploading-rules-wise-upload-rules).





## Downloading rules

To download the rules from blockchain type

```bash
$ wise download-rules --account [steem account] other-delegator-rules.yml

## An example
$ wise download-rules --account noisy noisy-rules.yml
```

This command has [more options available](https://github.com/noisy-witness/steem-wise-cli/blob/master/README.md#downloading-rules-wise-download-rules).

