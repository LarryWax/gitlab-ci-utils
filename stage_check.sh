#!/bin/bash

BRANCH_NAME="release-"$(echo $CI_BUILD_REF_NAME | grep -o -E "[0-9]+\.[0-9]+\.[0-9]+")
if [[ $(git log origin/$BRANCH_NAME --pretty=oneline | grep $CI_BUILD_REF) ]]; then
  echo "CHECK OK: tagged from release branch"
  exit 0
else
  echo "CHECK FAILED: tagged from wrong branch"
  exit -1
fi
