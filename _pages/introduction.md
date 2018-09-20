---
title: "WISE: Introduction"
permalink: "/introduction"
# toc: true
---

## Vision behind Wise

We believe, that Steem in a current form, do not fully utilize _the wisdom of a crowd_ of our community. Our goal is to provide a solution for a problem of "great content getting poor or no rewards".

Many people are blaming whales for not distributing their voting power in an optimal way. We believe that the current situation is not a fault of users, but it is just a symptom of a [non-optimal Steem voting algorithm](https://steemit.com/steem/@noisy/why-our-way-of-distributing-steem-by-voting-sucks-why-it-does-not-scale-and-how-we-can-improve-this-situation), therefore we decided to take action to invent a cure. That's why we are working on **Wise**.


## What is WISE?

Technically, it is a vote delegation system build as a 2nd-layer voting protocol on top of Steem.

But just in plain words... Wise simply allows you to securely allow other users to use your voting power under conditions specified by you. You can configure Wise in a way so your friend will be able to use your vote, but for example, only once a week.


## How does WISE work?

For example, I know that @andrejcibik is a great graphic designer, so it is safe to assume, that he can more easily notice and rate appropriately a content posted on tag #design. After all, he is an expert in this area, especially in comparison to me.

Thanks to WISE, I can give him the opportunity to use my vote:

- **In a safe way** <br>I do not need to give him a password or any private keys<br><br>
- **Under strictly defined rules**<br>In this case, he will be able to use my vote, but only on posts with #design tag.<br><br>
- **With limited voting power**<br>For example, only 3 full votes a week, but only if I have more voting power than 90%.

Of course, I can adjust rules in any way I want.

There are plenty of [different rules](/rules/), which can help you create very simple or very sophisticated rules, thanks to which you can create your own **curation-army** based on trusted-experts, with no possibility of abuse of your trust.

### Wise under the hood

How is this possible?

1. Using WISE, you place on Steem blockchain the rules under which @example-user can use your vote.

2. In the meanwhile, you run a daemon, which iterates blockchain head waiting for a voteorder from @example-user to emerge.

3. When the daemon encounters the _voteorder_ asking to vote for a particular post:

    1. It performs validation against rules defined earlier
    2. If the result of the validation is positive — daemon casts a vote.

Wise is an open-source and transparent protocol, which utilize Steem `custom_json` operation as a communication channel, to help you create your personal web-of-trust build on curators chosen by you, responsible for utilizing your voting power in an optimal way.

## Why did we create WISE??

Steem is an unusual phenomenon, because it behaves like a self-managing newspaper editorial office. A good editorial board needs three things: Authors, Editors, Readers.

 Steemit Inc. have implemented mechanisms that drive publication in steem. The mechanism of votes encourages authors to create good content, while the ability to accumulate shares (vests) gives power over the content and over the shape of whole Steem. Here is the encouragement for authors and editors. That's how it should look.

 Unfortunately, as in the classic editorial office, those with highest power usually do not have adequate knowledge (as all we know the same problem is with the governments ;) ). This makes it much easier to disseminate populist than factual content. One solution to this problem exists in the world of science. In academic journals, experts in specific fields in review boards conduct so-called peer review. These experts assess that the article is valuable and brings new content into science before it is published. Our main goal is to create a similar solution in Steem.

**Expert system on Steem**. Thanks to WISE, people with a lot of shares or power, (the whales), can safely delegate their voting power to people who they consider to be competent in a given field. The rules system makes it possible to set strict conditions for the use of that power. Most often, such a delegation is done by limiting the list of allowed tags. This is just like hiring experts in academic journals!

The Steem community (and whales in particular) is very active when it comes to continuous improvement of content quality. There are numerous actions to stop plagiarism and other abuses and to encourage authors. Unfortunately, single man's capabilities are limited and not only he cannot possess knowledge in all fields, but also his time is limited. To effectively moderate content, some whales would have to read several hundred articles a day. As the network grows — unassisted moderation becomes impossible. This is the place of the expert system that is possible thanks to WISE.

We would like to have the ability to say that WISE is a revolution, but because some mechanisms of moderation and cleaning of tags already exist - WISE is an evolution - it is a tool that will simply facilitate and improve already existing processes.

### What benefits does WISE bring to the community?

- An expert system — for us this is the most important application of WISE. It will enable real content curation (like peer review in academic journals)
- Possibility to punish unacceptable behavior

More detailed solutions will be possible thanks to growing list of specific rules, and integration with other tools on Steem.

### What WISE gives to the delegators?

We forsee that most of the delegators will be from among the whales. Probably the most important thing for them will be raising the quality of content on Steem, but in addition WISE will also bring them material benefits. In order to do an effective curation (and of course to waste least amount of VP), a person with a vote worth a dozen USD would have to vote more than hundred times a day. Thanks to WISE whales can avoid wasting time and voting power. What's more, the wisely distributed delegations can make the delegator a more recognizable person.

### What are the benefits of voters using WISE?

Voters will benefit in two ways. First of all, if they vote for a given post first, before a delegator's vote is cast — they will receive a high curation reward. The second (more important) benefit is the very fact of peing perceived as an expert. Receiving a large number of delegations is in fact a community-issued diploma / title that brings prestige and proves professional knowledge. The vote of many people means common trust.
