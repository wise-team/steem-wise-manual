---
title: "WISE"
permalink: "/splash"
layout: splash
header:
  overlay_color: "#000"
  overlay_filter: "0.4"
  overlay_image: /assets/images/splashes/splash-d2.jpg
  cta_label: "Read about Wise"
  cta_url: "introduction"
  caption: "Photo credit: Agata Chylińska"
excerpt: "<i>A vote delegation system for Steem blockchain</i> <br />Let others vote on your behalf."
feature_row:
  - title: "For voters"
    excerpt: "Someone delegetad you his vote? Do you want to vote? <br /> <small>Check instruction <a href=\"beginners/voting-using-voter-page\">here how to vote</a></small>"
    #§ 'url: ' + data.config.votingPage.url.production
    url: https://wise.vote/voting-page/
    btn_label: "Go to the Voter's page"
    btn_class: "btn--primary"
  - title: ""
    excerpt: "<i>Let others vote on your behalf</i><br /> [Learn what is Wise](introduction)"
  - title: "For delegators"
    excerpt: "Do you want to delegate your vote to other users?"
    url: "installation"
    btn_label: "Setup the Delegator's daemon"
    btn_class: "btn--primary"
#feature_row2:
#  - image_path: /assets/images/unsplash-gallery-image-2-th.jpg
#    alt: "placeholder image 2"
#    title: "Placeholder Image Left Aligned"
#    excerpt: 'This is some sample content that goes here with **Markdown** formatting. Left aligned with `type="left"`'
#    url: "#test-link"
#    btn_label: "Read More"
#    btn_class: "btn--primary"
#feature_row3:
#  - image_path: /assets/images/unsplash-gallery-image-2-th.jpg
#    alt: "placeholder image 2"
#    title: "Placeholder Image Right Aligned"
#    excerpt: 'This is some sample content that goes here with **Markdown** formatting. Right aligned with `type="right"`'
#    url: "#test-link"
#    btn_label: "Read More"
#    btn_class: "btn--primary"
#feature_row4:
#  - image_path: /assets/images/unsplash-gallery-image-2-th.jpg
#    alt: "placeholder image 2"
#    title: "Placeholder Image Center Aligned"
#    excerpt: 'This is some sample content that goes here with **Markdown** formatting. Centered with `type="center"`'
#    url: "#test-link"
#    btn_label: "Read More"
#    btn_class: "btn--primary"
---

<!--{% include feature_row id="intro" type="center" %}-->

{% include feature_row %}

{% include feature_row id="feature_row2" type="left" %}

{% include feature_row id="feature_row3" type="right" %}

{% include feature_row id="feature_row4" type="center" %}