#!/bin/bash

set -e

npm run build

cd dist

git add -A
git commit -m "deploy"
git push -f git@github.com:Molinc/molinc.github.io/Tecnozavrrr1 master
git push -f git@github.com:Molinc/Tecnozavrrr1.git master:gh-pages

cd - 
rm -rf dist
