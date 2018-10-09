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

<!--§ '\n- [' + d(data.config.sql.endpoint.schema) + '://' + d(data.config.sql.endpoint.host) + '/operations](' + d(data.config.sql.endpoint.schema) + '://' + d(data.config.sql.endpoint.host) + '/operations) — the API\n' §-->
- [https://sql.wise.vote/operations](https://sql.wise.vote/operations) — the API
<!--§§.-->
<!--§ '\n- [' + d(data.config.sql.endpoint.schema) + '://' + d(data.config.sql.endpoint.host) + '/properties](' + d(data.config.sql.endpoint.schema) + '://' + d(data.config.sql.endpoint.host) + '/properties) — the API properties\n' §-->
- [https://sql.wise.vote/properties](https://sql.wise.vote/properties) — the API properties
<!--§§.-->
<!--§ '\n- [' + d(data.config.sql.endpoint.schema) + '://' + d(data.config.sql.endpoint.host) + '/delegators](' + d(data.config.sql.endpoint.schema) + '://' + d(data.config.sql.endpoint.host) + '/delegators) — delegators stats\n' §-->
- [https://sql.wise.vote/delegators](https://sql.wise.vote/delegators) — delegators stats
<!--§§.-->
<!--§ '\n- [' + d(data.config.sql.endpoint.schema) + '://' + d(data.config.sql.endpoint.host) + '/voters](' + d(data.config.sql.endpoint.schema) + '://' + d(data.config.sql.endpoint.host) + '/voters) — voters stats\n' §-->
- [https://sql.wise.vote/voters](https://sql.wise.vote/voters) — voters stats
<!--§§.-->

Examples and instructions on using WiseSQL can be found in the Git repository: [https://github.com/wise-team/steem-wise-sql](https://github.com/wise-team/steem-wise-sql).

