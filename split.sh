#!/usr/bin/env bash

# this shell script run fails on github actions: @see https://github.com/plugins-world/packages/actions/runs/4380027106/jobs/7666627198#step:4:120

set -e
set -x

CURRENT_BRANCH="master"

SPLITSH_LITE_BIN=splitsh-lite
if [ ! -x $SPLITSH_LITE_BIN ]; then
    SPLITSH_LITE_BIN=./bin/splitsh-lite
fi

function split()
{
    SHA1=`${SPLITSH_LITE_BIN} --prefix=$1`
    git push $2 "$SHA1:refs/heads/$CURRENT_BRANCH" -f
    git remote remove $2 || true
    git branch -D $2 || true
}

function remote()
{
    git remote add $1 $2 || git remote set-url $1 $2 || true
}

git pull origin $CURRENT_BRANCH || true


# remote foundation git@github.com:mouyong/laravel-foundation.git
remote MarketManager git@github.com:mouyong/MarketManager.git

# split 'src/Illuminate/Foundation' foundation
split 'MarketManager' MarketManager
