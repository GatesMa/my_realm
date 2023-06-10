#!/bin/bash

# pull latest 
git pull

# remove cache dir
rm -rf _book/
rm -rf docs/

# generate docs
gitbook build

# copy to docs
cp -rf _book/ docs/

# add commits
git add .

# commit
git commit -m "auto deploy website"

# push to github and others
git push origin