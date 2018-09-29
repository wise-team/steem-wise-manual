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
- [http://sql.wise.vote/](http://sql.wise.vote/) — openAPI specs
- [http://sql.wise.vote/operations](http://sql.wise.vote/operations) — the API

Examples and instructions on using WiseSQL can be found in the Git repository: [https://github.com/wise-team/steem-wise-sql](https://github.com/wise-team/steem-wise-sql).

