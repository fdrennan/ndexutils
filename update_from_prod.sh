#!/bin/bash

git checkout master
git add --all
git commit -m 'Lazy update'
git pull origin master
git push origin master
git reset --hard
git checkout beta
git reset --hard
git pull origin master
git push origin beta
git checkout dev
git reset --hard
git pull origin beta
git push origin dev
git checkout master
