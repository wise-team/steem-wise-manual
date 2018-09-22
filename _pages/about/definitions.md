---
title: "Definitions"
permalink: "/about/definitions"
# toc: true
---
Here comes a handy vocabulary of Wise:

- **Patron** — a user who owns the voting power and allows the voter to use it.
- **Expert** — a user who votes using the account of the delegator (with delegator's voting power)
- **Daemon** — a service that is running on delegator's server, that receives vote orders sent by the voter and decides weather to vote as the voter asked, or to reject the voteorder.
- **\*Wise platform*** *(planned)* — an alternative to the daemon, which allows a user to be a delegator without setting up the daemon (instead the daemon is operated by us). Wise platform is under development now.
- **Ruleset** — named set of rules under which specified voter can vote with the delegator's account. Ruleset has a name, has a voter defined and has zero or more rules specified.
- **Voteorder** — a request from the voter to the delegator to vote for a given post. Contains name of the ruleset, author and permlink of the post.
- **Voteorder response** — a request from the voter to the delegator to vote for a given post. Contains name of the ruleset, author and permlink of the post.

Commands on blockchain:
- **rules**
- **voteorder**
- **voteorder_response**
