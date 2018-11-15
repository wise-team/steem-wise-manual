#!/usr/bin/env bash
set -e # fail on first error
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."
cd "${DIR}"

docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --volume="jekyll_bundle_cache:/usr/local/bundle" \
  -p "4000:4000" \
  -it jekyll/builder:3.7 \
  jekyll serve
