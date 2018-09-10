#!/usr/bin/env bash

docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --volume="jekyll_bundle_cache:/usr/local/bundle" \
  -p "4000:4000" \
  -it jekyll/jekyll:3.7 \
  jekyll serve
