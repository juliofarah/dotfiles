#!/bin/bash

branch_name=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD)

echo "stashing changes from "$branch_name
git stash

echo "pulling latest "$branch_name
git pull origin $branch_name -r

if [ "$branch_name" != "master" ]; then
  echo "checking out master"
  git checkout master

  echo "pulling latest master"
  git pull origin master -r

  echo "checking out "$branch_name
  git checkout $branch_name
fi

echo "popping stash"
git stash pop 
