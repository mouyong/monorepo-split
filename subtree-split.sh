#!/usr/bin/env bash

set -e
set -x

CURRENT_BRANCH="master"

function split()
{
    git subtree split -P $1 -b $2
    git push $2 "$2:refs/heads/$CURRENT_BRANCH" -f
    git remote remove $2
    git branch -D $2
}

function remote()
{
    git remote add $1 $2 || git remote set-url $1 $2 || true
}

git pull origin $CURRENT_BRANCH || true


# remote dcat-saas git@github.com:mouyong/dcat-saas.git

# split 'extensions/plugins/DcatSaas' dcat-saas
