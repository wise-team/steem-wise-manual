---
title: "Rule: first post"
permalink: "/rules/first-post"
# toc: true
---

> This are informations on a single rule. To find out how to create whole rulesets please see the following sections: [rules]({{ "/rules" | relative_url }}) and [synchronising rules]({{ "/advanced/synchronising-rules" | relative_url }}).

First post rule requires that the post must be the first post of this author. It does not have ane parameters.

Here is an example:
```yml
- voter: nicniezgrublem
  rulesets:
    - name: Warm welcome on polish tag
      description: You can vote for first posts of any users on polish tag.
      rules:
        - rule: first_post
        - rule: tags
          mode: require
          tags:
            - polish
```

