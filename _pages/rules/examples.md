---
title: "Examples of using few rules together"
permalink: "/rules/examples"
# toc: true
---

```yml
- voter: andrejcibik
  rulesets:
    - name: "Graphics, Design, Webdesign"
      description: "
        You can use my 0-20% vote on posts which has at least one of those tags: \
        graphics, design or webdesign"
      rules:
        - rule: weight
          mode: single_vote_weight
          min: 0
          max: 2000
        - rule: tags
          mode: any
          tags:
            - graphics
            - design
            - webdesign

```

```yml
- voter: andrejcibik
  rulesets:
    - name: SFW DLive
      description: "
        You can use my full vote for any dlive post, which is not \
        Not-Safe-For-Work"
      rules:
        - rule: weight
          mode: single_vote_weight
          min: 0
          max: 10000
        - rule: tags
          mode: require
          tags:
            - dlive
        - rule: tags
          mode: deny
          tags:
            - nsfw

```

```yml
- voter: nicniezgrublem
  rulesets:
    - name: Flag on Polish
      description: You can use my flag any polish post
      rules:
        - rule: weight
          mode: single_vote_weight
          min: 0
          max: 10000
        - rule: tags
          mode: require
          tags:
            - polish

```

```yml
- voter: nicniezgrublem
  rulesets:
    - name: Wise moderation team
      description: "
        You can use my full vote for any post, that is has not been voted on by \
        any of your team peers and has no more than 100 voters."
      rules:
        - rule: weight
          mode: single_vote_weight
          min: 0
          max: 10000
        - rule: voters
          mode: none
          usernames:
            - noisy
            - perduta
            - jblew
            - smashedturtle
            - andrej.cibik
        - rule: votes_count
          mode: less_than
          value: 100

```

```yml
- voter: jblew
  rulesets:
    - name: Vote only before payout for poor posts
      description: "
        You can use my full vote for any post, that is no older than 7 days and \
        has payout less than 9.5 SBD"
      rules:
        - rule: weight
          mode: single_vote_weight
          min: 0
          max: 10000
        - rule: age_of_post
          mode: younger_than
          unit: day
          value: 7
        - rule: payout
          mode: less_than
          value: 9.5

```

```yml
- voter: nicniezgrublem
  rulesets:
    - name: "Polish, Tesla or Elon Musk"
      description: You can use my full vote on any polish post about Tesla or Elon Musk
      rules:
        - rule: weight
          mode: single_vote_weight
          min: 0
          max: 10000
        - rule: tags
          mode: require
          tags:
            - polish
        - rule: tags
          mode: any
          tags:
            - tesla
            - elonmusk

```

```yml
- voter: nicniezgrublem
  rulesets:
    - name: "Polish, Tesla"
      description: You can use my full vote on any polish post about tesla
      rules:
        - rule: weight
          mode: single_vote_weight
          min: 0
          max: 10000
        - rule: tags
          mode: require
          tags:
            - polish
            - tesla

```

```yml
- voter: andrejcibik
  rulesets:
    - name: Self-boost
      description: You can use my 0-100% vote for own post
      rules:
        - rule: weight
          mode: single_vote_weight
          min: 0
          max: 10000
        - rule: authors
          mode: allow
          authors:
            - andrejcibik

```

```yml
- voter: nicniezgrublem
  rulesets:
    - name: Warm welcome
      description: "
        You can only use my full vote for first posts of users if I have enough \
        voting power."
      rules:
        - rule: weight
          mode: single_vote_weight
          min: 10000
          max: 10000
        - rule: first_post
        - rule: voting_power
          mode: more_than
          value: 8000

```

```yml
- voter: perduta
  rulesets:
    - name: Vote for anything
      description: You can use my full upvote 8 times in a week
      rules:
        - rule: weight
          mode: single_vote_weight
          min: 0
          max: 10000
        - rule: weight_for_period
          unit: day
          period: 7
          weight: 80000

```

In YAML there are several ways to write multiline strings. Good examples can be found at [https://yaml-multiline.info/](https://yaml-multiline.info/).