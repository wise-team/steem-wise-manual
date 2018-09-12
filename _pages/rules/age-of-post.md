---
title: "Rule: age of post"
permalink: "/rules/age-of-post"
# toc: true
---

> This are informations on a single rule. To find out how to create whole rulesets please see the following sections: [rules]({{ "/rules" | relative_url }}) and [synchronising rules]({{ "/advanced/synchronising-rules" | relative_url }}).

Age of post rule limits the age of the post. You can specify maximal or minimal post age.

This rule has three fields: mode, unit and value.
- **mode**: There are two modes: `younger_than` and `older_than`.
- **unit**: There are four units: `day`, `hour`, `minute`, `second`
- **value**: The value of time in specified unit. An integer from 0 to Infinity.


Here is an example:
```yml
- voter: noisy
  rulesets:
    - name: Vote for new posts
      description: You can vote for posts younger than 7 days.
      rules:
        - rule: age_of_post
          mode: younger_than
          unit: day
          value: 7
```

