---
title: "The WISE protocol"
permalink: "/advanced/protocol"
# toc: true
---

At the beginning lets recall [the definitions here]({{ "/about/definitions" | relative_url }}).

> Wise protocol is versioned. This is a description ot Protocol v2 (the second version of protocol).
> In a future the protocol can be changed. We will put effort to change the documentation in paralell to changing the protocol.

Wise puts all of its data on Steem blockchain. There is no other way of exchanging messages. It uses a carefoully designed [protocol](https://github.com/noisy-witness/steem-wise-core/tree/master/src/protocol/versions), which has versioning enabled, and is already oriented for future development. (*Here you can find both typescript definitions and a JSON schema of the protocol.*)

Wise publishes the messages to the blockchain as `custom_json` operations. There are three types of messages that wise puts on the blockchain:

- set_rules — allows a delegator to specify one or more sets of rules under which a voter can use voting power of the delegator.
- send_voteorder — the voter asks the delegator's daemon to vote for a given post under specified set of rules (a ruleset)
- confirm_vote — contains confirmation that the delegator voted for the post, or a rejection with a message why the voteorder was rejected (which rule was not fulfilled and why).

Here are some real life screenshots from steemd:


#### Accepted voteorder:
![Accepted voteorder]({{ "/assets/images/advanced/protocol/steemd-accepted-voteorder.png" | relative_url }})



#### Rejected voteorder:
![Rejected voteorder]({{ "/assets/images/advanced/protocol/steemd-rejected-voteorder.png" | relative_url }})



## Wise custom_json operations

Each wise operation is a custom_json operation with **id = "wise"**. Here is how it looks:
```json
[
    [
        "custom_json",
        {
            "required_auths": [], "required_posting_auths": [ "account_name" ],
            "id": "wise",
            "json": "json string"
        }
    ]
]
```
**json** field is a command json serialized to string. Below are examples of json for each command.



### Set rules
Example set_rules:
```json
{
    "rulesets": [
        {
            "name": "valid_ruleset",
            "rules": [
                { "rule": "weight", "min": 0, "max": 1000},
                { "rule": "tags", "mode": "require", "tags": [ "steemprojects" ]}
            ]
        }
    ]
}
```



### Send voteorder

Example send_voteorder:
```json
{
    "rulesetName": "Na wsparcie polskiej spolecznosci tagu pl-artykuly",
    "permlink": "zyciowe-plany-marzenia-kontra-rzeczywistosc",
    "author": "astromaniak",
    "weight": 2500
}
```



### Confirm vote

Example accepted voteorder:
```json
{
    "voteorderTxId":"f5c5835736cc31e1ca0dc39a6c79261c60d3e80d",
    "accepted": true,
    "msg":"",
    "vote": {
        "voter": "noisy",
        "author": "astromaniak",
        "permlink": "zyciowe-plany-marzenia-kontra-rzeczywistosc",
        "weight": 2500
    }
}

```

Example rejected voteorder:
```json
{
    "voteorderTxId": "5d0f42e469f18b30457a586e3d3aeafd60975f94",
    "accepted": false,
    "msg": "Assert Exception:_db.head_block_time() < comment.cashout_time - STEEM_UPVOTE_LOCKOUT_HF17: Cannot increase payout within last twelve hours before payout."
}

```



## How is protocol defined?

- [Here is a link to a directory with all protocol definition files](https://github.com/noisy-witness/steem-wise-core/tree/master/src/protocol/versions/v2).

Protocol is defined in a set of typescript classes (link to the protocol definitione). They are compiled to JSON schema file (wise-schema.json in the above directory).

