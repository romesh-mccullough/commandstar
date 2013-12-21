#!/bin/bash

find . -name "*.coffee" -not -path "./node_modules/*" \
  | xargs -I % \
    ./node_modules/coffeelint/bin/coffeelint \
    --quiet \
    %
