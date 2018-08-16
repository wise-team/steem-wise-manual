---
title: "Steem WISE: Introduction"
# toc: true
---

> This text is a draft. It is meant to be changed by [@noisy](https://steemit.com/@noisy). Stay tuned!



## What is WISE?

It is a vote delegation system. Wise allows you to securely allow other users using your voting power under certain conditions.

> To be continued by @noisy.



## How does WISE work?

In short: WISE allows you to delegate your vote under **strictly defined criteria**.

For example, you know that @andrejcibik is a great web designer. Thanks to WISE, you can give him the opportunity to use your vote:

- in a safe way
- under strictly defined rules (the post must meet the rules you had set). In this case, you will allow to use your vote only for posts with the # design tag.
- with limited voting power

How is this possible? Using WISE, you place on Steem blockchain the rules under which @andrejcibik can use your vote. In the meanwhile, you run a daemon, which iterates blockchain head waiting for a voteorder from @andrejcibik to emerge. When the daemon encounters the voteorder — it performs validation. It checks if the post and weight in the order meet the criteria set previously in the rules. If the result of the validation is positive — daemon casts a vote. If not — a custom_json with information on rejection is posted to the blockchain.



## Why did we create WISE?

This is a question for the author of the idea — Krzysztof @noisy. However, for my text to be complete, I will present my point of view. For me, Steem is an unusual phenomenon, because it behaves like a self-managing newspaper editorial office. Let me explain. A good editorial board needs three things: (1) authors, (2) editors and (3) readers. Ned Scott and colleagues have implemented mechanisms that drive "promotion" in steem. The mechanism of votes encourages authors to create good content, while the ability to accumulate shares (vests) gives power over the content and over the shape of whole steem. Here is the encouragement for authors and editors. That's how it should look. Unfortunately, as in the classic editorial office, those with highest power usually do not have adequate knowledge (as all we know the same problem is with the governments ;) ). This makes it much easier to disseminate populist than factual content. One solution to this problem exists in the world of science. In academic journals, experts in specific fields in review boards conduct so-called peer review.  These experts assess that the article is valuable and brings new content into science before it is published. Our main goal is to create a similar solution in Steem.

**Expert system on Steem**. Thanks to WISE, people with a lot of shares or power, (the whales), can safely delegate their voting power to people who they consider to be competent in a given field. The rules system makes it possible to set strict conditions for the use of that power. Most often, such a delegation is done by limiting the list of allowed tags. This is just like hiring experts in academic journals!

The Steem community (and whales in particular) is very active when it comes to continuous improvement of content quality. There are numerous actions to stop plagiarism and other abuses and to encourage authors. Unfortunately, single man's capabilities are limited and not only he cannot possess knowledge in all fields, but also his time is limited. To effectively moderate content, some whales would have to read several hundred articles a day. As the network grows — unassisted moderation becomes impossible. This is the place of the expert system that is possible thanks to WISE.

I'd like to have the ability to say that WISE is a revolution, but because quite successful moderation and cleaning of tags already exist - WISE is an evolution - it is a tool that will simply facilitate and improve already existing processes.



### What benefits does WISE bring to the community?

- An expert system — for us this is the most important application of WISE. It will enable real content curation (like peer review in academic journals)
- Possibility to punish unacceptable behavior

More detailed solutions will be possible thanks to growing list of specific rules, and integration with other tools on Steem.



### What WISE gives to the delegators?

We forsee that most of the delegators will be from among the whales. Probably the most important thing for them will be raising the quality of content on Steem, but in addition WISE will also bring them material benefits. In order to do an effective curation (and of course to waste least amount of VP), a person with a vote worth a dozen USD would have to vote more than hundred times a day. Thanks to WISE whales can avoid wasting time and voting power. What's more, the wisely distributed delegations can make the delegator a more recognizable person.



### What are the benefits of voters using WISE?

Voters will benefit in two ways. First of all, if they vote for a given post first, before a delegator's vote is cast — they will receive a high curation reward. The second (more important) benefit is the very fact of peing perceived as an expert. Receiving a large number of delegations is in fact a community-issued diploma / title that brings prestige and proves professional knowledge. The vote of many people means common trust.

In addition, Krzysztof @noisy is already talking about integration of our system with other Steem tools. We hope that this will increase the visibility of votes cast by experts using WISE.