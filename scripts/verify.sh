#!/usr/bin/env bash
set -e # fail on first error
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.." # parent dir of scripts dir

PORT=8633

cd "${DIR}"

npm install -g broken-link-checker http-server 


docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --volume="jekyll_bundle_cache:/usr/local/bundle" \
  -p "4000:4000" \
  -it jekyll/jekyll:3.7 \
  jekyll build

mkdir -p "${DIR}/_site_rewritten/steem-wise-manual"
cp -r "${DIR}/_site/" "${DIR}/_site_rewritten/steem-wise-manual/"

http-server -p ${PORT} -a localhost "${DIR}/_site_rewritten/" &
SERVER_PID=$!

BLC_RET_CODE=1
{ # try
    blc "http://localhost:${PORT}/steem-wise-manual" -ro --filter-level 3 --exclude "http://muon.jblew.pl:3000/operations"
    BLC_RET_CODE=$?
} || { # catch
    BLC_RET_CODE=1
}

kill $SERVER_PID
rm -rf "${DIR}/_site_rewritten"

echo "Exit with $BLC_RET_CODE"
exit $BLC_RET_CODE