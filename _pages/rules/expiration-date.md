---
title: "Rule: expiration date"
permalink: "/rules/expiration-date"
# toc: true
---

> This are informations on a single rule. To find out how to create whole rulesets please see the following sections: [rules]({{ "/rules" | relative_url }}) and [synchronising rules]({{ "/advanced/synchronising-rules" | relative_url }}).

This rule can be used for setting the expiration time of the ruleset. After specified date this rule will always validate
the voteorder as invalid.

This rule has one field: **date**. The date has to be in ISO 8601 or IETF format. E.g. `2018-09-12T19:07:04Z`. Do not forget to set the timezone. Appending `Z` at the end of the date indicates UTC/GMT timezone. An example of +2:00 timezone:
`2018-09-12T19:07:04+02:00`


Here is an example:
```yml
- voter: noisy
  rulesets:
    - name: (...)
      description: (...). This ruleset will expire at the end of May 2019.
      rules:
        - rule: expiration_date
          date: 2019-06-00T00:00:00Z
        - (...)
```

