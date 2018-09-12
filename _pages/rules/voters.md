---
title: "Rule: voters"
permalink: "/rules/voters"
# toc: true
---

> This are informations on a single rule. To find out how to create whole rulesets please see the following sections: [rules]({{ "/rules" | relative_url }}) and [synchronising rules]({{ "/advanced/synchronising-rules" | relative_url }}).

Voters rule allows you to validate voteorder based on who is voting for the post.

This rule has two fields: **mode** and **usernames**.
- **mode**: There are four modes: `one`, `none`, `any` and `all`.
  - **One**: "one of" - every post voter must be within this list)
  - **None**: "none of" - every voter must not be on the list
  - **Any**: "any of" - post should be voted on by at least one of the voters from the list
  - **All**: "all of" - all usernames from the list must vote on the post
- **usernames**: a list of voters account names



Here is an example of any mode:

```yml
- voter: nicniezgrublem
  rulesets:
    - name: Wise moderation team
      description: You can vote for post that has not been voted on by any of your team peers.
      rules:
        - rule: voters
          mode: none
          usernames:
            - noisy
            - perduta
            - jblew
            - smashedturtle
            - andrej.cibik
```
