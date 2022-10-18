#!/usr/bin/env bash

set -e
set -x

CURRENT_BRANCH="9.x"

function split()
{
    SHA1=`./splitsh-lite --prefix=$1`
    git push $2 "$SHA1:refs/heads/$CURRENT_BRANCH" -f
    git remote remove $2 || true
    git branch -D $2 || true
}

function remote()
{
    git remote add $1 $2 || git remote set-url $1 $2 || true
}

git pull origin $CURRENT_BRANCH || true


#remote foundation git@github.com:mouyong/laravel-foundation.git

#split 'src/Illuminate/Foundation' foundation
