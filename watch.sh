#!/bin/bash

#try running: npm install -g watchify browser-sync
echo "Building Babel..."
#browserify node_modules/babel-core/lib/api/browser.js -o babel-core.js
#watchify src/es2015handler.js -o es2015handler.js -v \
#  >> (echo "waiting" && read && browser-sync start --server --https --files "*.html|*.js";) 2>&1

#read < <(watchify src/es2015handler.js -o es2015handler.js -v) & echo "done" && browser-sync start --server --https --files "*.html|*.js"

tee >(read && browser-sync start --server --https --files "*.html|*.js") < <(watchify src/es2015handler.js -o '> es2015handler.js && echo "Start Watching"' -v)
#| read && (echo "wut" && browser-sync start --server --https --files "*.html|*.js")

#exec 5<(watchify src/es2015handler.js -o es2015handler.js -v)

#read <&5 && echo "done" && browser-sync start --server --https --files "*.html|*.js"