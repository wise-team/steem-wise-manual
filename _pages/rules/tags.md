---
title: "Rule: tags"
permalink: "/rules/tags"
# toc: true
---


> This are informations on a single rule. To find out how to create whole rulesets please see the following sections: [rules]({{ "/rules" | relative_url }}) and [synchronising rules]({{ "/advanced/synchronising-rules" | relative_url }}).

Tags rule restricts post tags in four modes.

This rule has two fields: **mode** and **tags**.
- **mode**: There are four modes: `allow`, `deny`, `require`, `any`.
  - **Allow**: all post tags must be on the list
  - **Deny**: no of the post tags can be on the list
  - **Require**: the post must have all tags from the list, but can include other not listed tags.
  - **Any**: the post has to include at least one of the listed tags
- **tags**: a list of tags



Here is an example of any mode:

```yml
- voter: andrejcibik
  rulesets:
    - name: Graphics & design
      description: You can vote for post with any of the tags: graphics, design and webdesign
      rules:
        - rule: tags
          mode: any
          tags:
            - graphics
            - design
            - webdesign
```

