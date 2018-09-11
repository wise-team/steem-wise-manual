---
title: "Rules overview"
permalink: "/rules"
# toc: true
---

> This page describes each of the rules. To see how to synchronise them go to
> [synchronising rules section]({{ "/advanced/synchronising-rules" | relative_url }}).

Here is the list of already defined rules. New rules are added on community requests. If you would like to use a rule that is not written yet, please [create an issue](https://github.com/noisy-witness/steem-wise-core/issues) and add *#enhancement* tag.

Available rules:

1. [Age of post]({{ "/rules/age-of-post" | relative_url }})
2. [Authors]({{ "/rules/authors" | relative_url }})
3. [Expiration date]({{ "/rules/expiration-date" | relative_url }})
4. [First post]({{ "/rules/first-post" | relative_url }})
5. [Payout]({{ "/rules/payout" | relative_url }})
6. [Tags]({{ "/rules/tags" | relative_url }})
7. [Voters]({{ "/rules/voters" | relative_url }})
8. [Votes count]({{ "/rules/votes-count" | relative_url }})
9. [Voting power]({{ "/rules/voting-power" | relative_url }})
10. [Weight]({{ "/rules/weight" | relative_url }})
11. [Weight for period]({{ "/rules/weight-for-period" | relative_url }})

## Example rulesets

Here are example rules defined for a single voter @jblew:
```yml
- voter: jblew
  rulesets:
    - name: Vote only before payout for poor posts
      description: "You can use my full vote for \
        any post, that is not older than 7 days and \
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
A voteorder is valid only if validation of all rules is positive. You can devine more than one ruleset for a single user, and you can define rulesets for as many users as you wish. Here are some examples:

```yml
# Two rulesets for a single voter
- voter: noisy
  rulesets:
    - name: Ruleset A
      description: A message for the voter
      rules:
        - rule: a
          ...
        - rule: b
          ...
    - name: Ruleset B
      description: A message for the voter
      rules:
        - rule: c
          ...
        - rule: d
          ...
```

```yml
# Same rulesets for two voters
- voter: andrej.cibik
  rulesets:
    - name: Ruleset A
      description: A message for the voter
      rules:
        - rule: a
          ...
        - rule: b
          ...
- voter: perduta
  rulesets:
    - name: Ruleset A
      description: A message for the voter
      rules:
        - rule: a
          ...
        - rule: b
          ...
```

```yml
# Four different rulesets for two users
- voter: noisy
  rulesets:
    - name: Ruleset A
      description: A message for the voter
      rules:
        - rule: a
          ...
        - rule: b
          ...
    - name: Ruleset B
      description: A message for the voter
      rules:
        - rule: c
          ...
        - rule: d
          ...
- voter: nicniezgrublem
  rulesets:
    - name: Ruleset C
      description: A message for the voter
      rules:
        - rule: e
          ...
        - rule: f
          ...
    - name: Ruleset D
      description: A message for the voter
      rules:
        - rule: g
          ...
        - rule: h
          ...
```