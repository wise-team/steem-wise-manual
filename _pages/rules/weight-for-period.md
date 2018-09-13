---
title: "Rule: weight for period"
permalink: "/rules/weight-for-period"
# toc: true
---

> This are informations on a single rule. To find out how to create whole rulesets please see the following sections: [rules]({{ "/rules" | relative_url }}) and [synchronising rules]({{ "/advanced/synchronising-rules" | relative_url }}).

Weight for period rule limits the sum of absolute weights of upvotes / flags over specified period of time.

The values are in the steem percent format. -10000 = -100%, -5000 = -50%, 0 = 0%, 100 = 1%, 80000 = 80% and 10000 = 100%. They are multiplied by the number of votes/flags: 110000 = 11 * 10000 - means 11 full upvotes / flags. It can also mean 22 50% upvotes/flags.

This rule has three fields: **unit**, **period** and **weight**.
- **unit**: the time unit. Available units: `day`, `hour`, `minute`, `second`.
- **period**: the value for period of time. Used with the unit.
- **weight**: maximal absolute sum of weights of votes over period specified by *period* and *unit*.

Here are some examples:
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

```yml
- voter: jblew
  rulesets:
    - name: Vote carefully
      description: You can use my 8% upvote or flag 2 times in a month
      rules:
        - rule: weight
          min: 0
          max: 800
        - rule: weight_for_period
          unit: day
          period: 30
          weight: 1600

```
