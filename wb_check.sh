#!/bin/bash

if [[ $(git log origin/develop --pretty=oneline | grep $CI_BUILD_REF) ]]; then
  echo "CHECK OK: tagged from develop branch"
  exit 0
else
  echo "CHECK FAILED: tagged from wrong branch"
  exit -1
fi
