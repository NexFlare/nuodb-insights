#!/bin/sh

set -e
GIT_STATUS="$(git status --porcelain)"
VERSION="$(./release/relman.py --check-current --show-head-version)"
if [ "$GIT_STATUS" != "" ]
then
    git add .
    git commit -m "v${VERSION} commit"
fi