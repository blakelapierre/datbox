#!/bin/bash

#try running: npm install -g watchify browser-sync
echo "Building Babel..."

tee >(read && browser-sync start --server --https --files "*.html|*.js") \
  < <(watchify src/es2015handler.js -o '> es2015handler.js && echo "Start Watching"' -v)
