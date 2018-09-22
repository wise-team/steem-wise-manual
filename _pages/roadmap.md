---
title: "WISE: Roadmap"
permalink: "/roadmap"
# toc: true
---

![Roadmap]({{ "/assets/images/roadmap/roadmap-current-02.png" | absolute_url }})

Despite maturity of this project, Wise is not finished product yet. Wise is first and foremost **a protocol** build on top of Steem.

So, to understand our plan for development of Wise, we needed to ask ourselves a question: _How you can demonstrate a potential of a protocol?_

Our response to this question is this 3-stage master plan:

### Phase 1: Building an MVP (completed)

During first stage of Wise development we have focused on building a solid foundation - a [Wise Core](https://github.com/noisy-witness/steem-wise-core) library.

Building such a library would not be effective without knowing a requirements from a real application - that's why we have also build [Wise Voting Page](https://wise.vote/voting-page/) and [Wise CLI](https://github.com/noisy-witness/steem-wise-cli), so we could test everything together as a Minimal Viable Product.

We recruited from our local community dozens of beta-testers (which are actually a daily users of Wise), so we were able to gather first feedback and to test our assumptions. With all of that, we were ready for...

### Phase 2: Building a Toolset

Even the best project won't be used if it is too difficult to use. During 2nd phase we have focused on building tools which makes Wise more user-friendly. We eliminated a need to use raw Steem private keys by integrating Wise Voting Page with **[SteemConnect](https://steemconnect.com/)** and **[Vessel Wallet](https://github.com/aaroncox/vessel/releases)** and we provided a comprehensive online documentation of our tools in form of this website.

But to make a project even more user friendly, we need to learn more about how our users use Wise in reality. We believe that an important role in this will have our projects like [Wise SQL](https://github.com/noisy-witness/steem-wise-sql) or Wise Block Explorer.

Phase 2 will be considered as finished after a release of so called **Wise Portal**. Wise Portal in an essence will be an open-source web service, capable of helping a user with all Wise-related stuff, like:

* setup of wise-deamon in a cloud with just few clicks
* creating sophisticated rulesets for Wise-delegators by simple interface
* finding experts among Steem users, to which you could delegate your own voting power

### Phase 3: Integration with 3rd party Steem Dapps

Even after building all that cool stuff, we need to remember, that greatest power of a protocol is... a capability of integrating it with other already existing and very popular applications. History of technology taught us, even the best protocol cannot be successful, without multiple projects utilizing it's functionality.

To better demonstrate a full potential of Wise Protocol, we will help integrate it with multiple 3rd party projects, like [SteemPlus](https://steemprojects.com/projects/p/steemplus/), [SteemProjects](https://steemprojects.com/) and hopefully some Steem interfaces like [Busy](https://busy.org), [SteemPeak](https://steempeak.com/) or [Utopian](https://utopian.io/).

We hope that at that point thousands of Wise users will help us convince developers of other projects, that integration with Wise... is a wise thing to do :)
