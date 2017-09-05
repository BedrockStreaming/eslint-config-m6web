#!/bin/sh

if [ -n "$(git status --porcelain)" ]; then
  echo "Git repository is dirty."
  exit 1
fi

# Retrieve tag name
if [[ -z "$1" ]]; then
  echo "Enter a tag name please."

  exit 1
fi

# Clean up env
git checkout master && git pull && git branch -D $1-tmp && git tag -d $1

# Create temporary branch
# Change package version
# Generate shrinkwrap
# Create tag and publish it to the repository
git checkout -b $1-tmp \
    && ./node_modules/.bin/mversion "$1" \
    && npm prune && npm install \
    && git add package.json \
    && git commit -m "$1" && git tag $1  && git push origin $1 && git push origin $1-tmp:master

# Clean up env
git checkout master && git branch -D $1-tmp
