---
title: "Rule: authors"
permalink: "/rules/authors"
# toc: true
---

> This are informations on a single rule. To find out how to create whole rulesets please see the following sections: [rules]({{ "/rules" | relative_url }}) and [synchronising rules]({{ "/advanced/synchronising-rules" | relative_url }}).

Authors rule allows you to create an allow / deny list of authors of steem posts.

This rule has two fields: **mode** and **authors**.
- **mode**: There are two modes: `allow` and `deny`.
  - Allow mode creates a white list. To be valid - the voted post must be authored by one of the people that are listed in this rule.
  - Deny mode creates a black list. To be valid - the voted post MUST NOT be authored by one of the people that are listed in this rule.
- **authors**: a list of authors



Here is an example of allow mode:

```yml
- voter: (...)
  rulesets:
    - name: Vote for wise authors
      description: You can vote for posts of the Wise teem.
      rules:
        - rule: authors
          mode: allow
          authors:
            - noisy
            - jblew
            - perduta
            - nicniecgrublem
            - smashedturtle
```

Here is an example of deny mode:

```yml
- voter: (...)
  rulesets:
    - name: Vote for wise posts
      description: You can vote for posts with wise tag that are not authored by jblew
      rules:
        - rule: tags
          mode: require
          tags:
            - wise
        - rule: authors
          mode: deny
          authors:
            - jblew
```

