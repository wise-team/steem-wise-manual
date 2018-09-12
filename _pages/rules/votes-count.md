---
title: "Rule: votes count"
permalink: "/rules/votes-count"
# toc: true
---

> This are informations on a single rule. To find out how to create whole rulesets please see the following sections: [rules]({{ "/rules" | relative_url }}) and [synchronising rules]({{ "/advanced/synchronising-rules" | relative_url }}).

Votes count rule allows you to specify minimal / maximal number of votes of the post.

This rule has two fields: **mode** and **value**.
- **mode**: There are three modes: `more_than` and `less_than`, `equal`.
- **value**: is an integer indicating the number of votes

Here is an example:
```yml
- voter: perduta
  rulesets:
    - name: Fresh posts
      description: You can vote only for posts that has no votes
      rules:
        - rule: votes_count
          mode: equal
          value: 0
```

