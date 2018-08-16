---
title: "Steem WISE: Introduction"
# toc: true
---

> This text is a draft. It is meant to be changed by [@noisy](https://steemit.com/@noisy). Stay tuned!



## What is WISE?

It is a vote delegation system. Wise allows you to securely allow other users using your voting power under certain conditions.

> To be continued by @noisy.



## Why is WISE necessary for steem?

> To be continued by @noisy.



## How does WISE work?

In short: WISE allows you to delegate your vote under **strictly defined criteria**.

For example, you know that @andrejcibik is a great web designer. Thanks to WISE, you can give him the opportunity to use your vote:

- in a safe way
- under strictly defined rules (the post must meet the rules you had set). In this case, you will allow to use your vote only for posts with the # design tag.
- with limited voting power

How is this possible? Using WISE, you place on Steem blockchain the rules under which @andrejcibik can use your vote. In the meanwhile, you run a daemon, which iterates blockchain head waiting for a voteorder from @andrejcibik to emerge. When the daemon encounters the voteorder — it performs validation. It checks if the post and weight in the order meet the criteria set previously in the rules. If the result of the validation is positive — daemon casts a vote. If not — a custom_json with information on rejection is posted to the blockchain.



## What will WISE do for the community?

An ultimate cure for cancer was the biggest holy grail of medicine for decades. However time has shown, that instead of ultimate cure, there are many potent, but narrow-targeted drugs. So are counter-abuse mechanisms in Steem network. 

One of the most significant advantages of steem is that it utilises human resources to distinguish between good and bad content. People are encouraged to vote and flag by financial reward. It is designed to resist most of the abuses; however, some people somehow try to bend the rules. Moreover, there are users, who, create imprecise and misleading content in professional fields. Even though they do it in good faith, it is almost impossible for a layperson to tell if professionally looking pseudo-scientific article tells the truth or not. Another problem is that it is hard for minnows to join forces in a vote-flag fight with a malicious whale. These are some of the wide variety of steem community problems. Probably there is not going to be any single tool to treat them all, but as with cancer drugs, there are many wise, narrow-targeted initiatives. Among them the WISE system is here, to even the odds in a fight with:

- Misleading pseudo-science — by allowing the community to appoint professional authorities to a position of curators in the field of their knowledge
- Abusive whales — through the ability to join forces of many minnows under common leadership



## What will WISE do for you (if you are a delegator)?

In steem, the best voting strategy is to vote ten times per 24 hours. Each vote decreases your voting power by 2%pp (percentage points). Each 24h 20%pp is restored progressively. The best strategy is to oscillate between 80%-100% of VP. To sum up: if you vote more than 10 votes/24h, your VP will not restore to 100%, but if you vote less than 10 times, your VP will only restore to 100% and not higher, so it means that you have wasted your votes. With WISE:

- You can delegate a static amount of votes (e.g. 150% means 1.5 of full votes or three 50% votes)
- You can delegate a static amount of vote, but only in a situation when you have a specific amount of votes still left, and it is going to waste.

WISE can also boost your voting earnings: If you delegate your votes to professional authority, it is more likely that the post he will choose will become more popular.



## What will WISE do for you (if you are a voter)?

If you have read preceding paragraphs, you see, that the voter is an essential part of this ecosystem. You may think — what will be my profit if I become a voter? It will not only boost your prestige & significance in the community but also allows you to earn money for being an early curator (you have to remember about early voter penalty for the first 30 minutes). Benefits of using WISE as a voter:

- Prestige & significance — power makes you noticeable. You can use it to build your personal brand and gain followers. You can become a tag curator if many people delegate you a WISEvote.
- First curator reward — you can vote with your vote first & then vote as a delegator (which often will be a whale or a big group of minnow delegators). This makes your vote more rewarded.