#!/bin/bash

git add --all
git commit -m 'update'
git push origin master
git checkout master
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
