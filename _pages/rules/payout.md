---
title: "Rule: payout"
permalink: "/rules/payout"
# toc: true
---

> This are informations on a single rule. To find out how to create whole rulesets please see the following sections: [rules]({{ "/rules" | relative_url }}) and [synchronising rules]({{ "/advanced/synchronising-rules" | relative_url }}).

Payout rule allows you to specify minimal / maximal payout of the post.

This rule has two fields: **mode** and **value**.
- **mode**: There are three modes: `more_than` and `less_than`, `equal`.
- **value**: is a floating point value of payout in SBD. eq. `9.5` means 9.5 SBD.

Here is an example:
```yml
- voter: jblew
  rulesets:
    - name: Vote for poor posts
      description: You can use my full vote for any post that has payout less than 4.0 SBD
      rules:
        - rule: payout
          mode: less_than
          value: 4.0
```

