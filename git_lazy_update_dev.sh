#!/bin/bash

git checkout dev
git add --all
git commit -m 'Lazy update'
git reset --hard
git push origin dev
git checkout beta
git pull origin dev
git reset --hard
git push origin beta
git checkout master
git pull origin beta
git push origin master
git reset --hard
