#!/bin/bash

git add --all
git commit -m 'Lazy update'
git reset --hard
git push origin dev
git checkout beta
git reset --hard
git pull origin dev
git reset --hard
git push origin beta
git checkout master
git reset --hard
git pull origin beta
git push origin master
