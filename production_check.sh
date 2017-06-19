#!/bin/bash

if [[ $(git log origin/master --pretty=oneline | grep $CI_BUILD_REF) ]]; then
  echo "CHECK OK: tagged from master branch"
  exit 0
else
  echo "CHECK FAILED: tagged from wrong branch"
  exit -1
fi
