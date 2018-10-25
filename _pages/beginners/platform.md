---
title: "The WISE platform"
permalink: "/beginners/platform"
# toc: true
---

The WISE Platform is an online app that aggregates all wise functions in one place. It is now under development and will replace the Voter Page when finished. It will also allow you to be a delegator without running the daemon on your own. Instead you will login into the Wise Platform and we will run the daemon for you.

Features on the WISE Platform:

1. Online voting
2. Synchronising the rules with easy graphical rules creator
3. **Delegating votes without running the daemon** on your own (we run the daemon for you)
4. Wise Explorer — see who delegated to whom and how were the delegations used



### WiseSQL

Now we have finished the first part of the wise platform: **WiseSQL** ([https://github.com/wise-team/steem-wise-sql](https://github.com/wise-team/steem-wise-sql)). The WiseSQL is a database with an api that synchronises with the blockchain and stores all wise operations in a searchable way. You can use our first public endpoint:

<!--§ const url = d(data.config.sql.url.production) + "operations"; '\n- [' + url + '](' + url + ') — the API\n' §-->
- [https://sql.wise.vote/operations](https://sql.wise.vote/operations) — the API
<!--§§.-->
<!--§ const url = d(data.config.sql.url.production) + "properties"; '\n- [' + url + '](' + url + ') — the API properties\n' §-->
- [https://sql.wise.vote/properties](https://sql.wise.vote/properties) — the API properties
<!--§§.-->
<!--§ const url = d(data.config.sql.url.production) + "delegators"; '\n- [' + url + '](' + url + ') — each delegator stats\n' §-->
- [https://sql.wise.vote/delegators](https://sql.wise.vote/delegators) — each delegator stats
<!--§§.-->
<!--§ const url = d(data.config.sql.url.production) + "voters"; '\n- [' + url + '](' + url + ') — each voter stats\n' §-->
- [https://sql.wise.vote/voters](https://sql.wise.vote/voters) — each voter stats
<!--§§.-->
<!--§ const url = d(data.config.sql.url.production) + "stats"; '\n- [' + url + '](' + url + ') — general stats\n' §-->
- [https://sql.wise.vote/stats](https://sql.wise.vote/stats) — general stats
<!--§§.-->

Examples and instructions on using WiseSQL can be found in the Git repository: [https://github.com/wise-team/steem-wise-sql](https://github.com/wise-team/steem-wise-sql).

