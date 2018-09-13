---
title: "Rule: voting power"
permalink: "/rules/voting-power"
# toc: true
---

> This are informations on a single rule. To find out how to create whole rulesets please see the following sections: [rules]({{ "/rules" | relative_url }}) and [synchronising rules]({{ "/advanced/synchronising-rules" | relative_url }}).

Voting power rule allows you to specify minimal / maximal voting power **of the delegator**.

This rule has two fields: **mode** and **value**.
- **mode**: There are three modes: `more_than` and `less_than`, `equal`.
- **value**: is an integer in a steem percent format. It means that 0 = 0%. 100 = 1%. 8000 = 80%, 10000 = 100%.

Here is an example:
```yml
- voter: smashedturtle
  rulesets:
    - name: Vote when I'm rich
      description: You can use ma vote when my voting power is > 80%
      rules:
        - rule: voting_power
          mode: more_than
          value: 8000
```

