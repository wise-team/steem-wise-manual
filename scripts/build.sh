#!/usr/bin/env bash
set -e # fail on first error
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."
cd "${DIR}"

docker run --rm \
  -w "/srv/jekyll" \
  --volume="$PWD:/srv/jekyll:rw" \
  --volume="jekyll_bundle_cache:/usr/local/bundle" \
  -it jekyll/builder:3.7 \
  bash -c "bundle install && bundle exec jekyll build"
