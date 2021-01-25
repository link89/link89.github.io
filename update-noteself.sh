#!/bin/bash
set -e
cd "$(dirname "$0")"
git subtree pull --prefix=noteself git@github.com:NoteSelf/NoteSelf.github.io.git master --squash
cp -f noteself/offline.html noteself/index.html 
sed -i 's/noteself\.github\.io/link89\.github\.io\/noteself/g' noteself/index.html
find . -name '*.js' -or -name '*.html' | xargs sed -i 's/\/sw.js/\/noteself\/sw.js/g'
