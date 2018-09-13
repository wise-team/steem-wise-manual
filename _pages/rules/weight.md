---
title: "Rule: weight"
permalink: "/rules/weight"
# toc: true
---

> This are informations on a single rule. To find out how to create whole rulesets please see the following sections: [rules]({{ "/rules" | relative_url }}) and [synchronising rules]({{ "/advanced/synchronising-rules" | relative_url }}).

Weight rule limits the weight of a single vote. Positive values indicate an upvote while negative indicate a flag. -10000 is a full (100%) flag and 10000 is a full upvote. 0 cancels the upvote/flag and removes the voter from the post's voters list. 

The values are in the steem percent format. -10000 = -100%, -5000 = -50%, 0 = 0%, 100 = 1%, 80000 = 80% and 10000 = 100%.

This rule has two fields: **min** and **max**.
- **min**: the minimal weight of the vote.
- **max**: the maximal weight of a vote.

Here is an example:
```yml
- voter: jblew
  rulesets:
    - name: Flag not too much
      description: "You can flag up to a 1% flag."
      rules:
        - rule: weight
          min: -100
          max: 0
```

Another example:
```yml
- voter: perduta
  rulesets:
    - name: Flag, uptove but do not reset your vote.
      description: "You can upvote, flag, but reseting the vote is forbidden."
      rules:
        - rule: weight
          min: -10000
          max: -1
        - rule: weight
          min: 1
          max: 10000
```

