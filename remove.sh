#!/usr/bin/env bash

set -e
set -x

function remote()
{
    echo "remove $2"
    git remote remove $1 || true
}

remote auth git@github.com:illuminate/auth.git
remote broadcasting git@github.com:illuminate/broadcasting.git
remote bus git@github.com:illuminate/bus.git
remote cache git@github.com:illuminate/cache.git
remote collections git@github.com:illuminate/collections.git
remote conditionable git@github.com:illuminate/conditionable.git
remote config git@github.com:illuminate/config.git
remote console git@github.com:illuminate/console.git
remote container git@github.com:illuminate/container.git
remote contracts git@github.com:illuminate/contracts.git
remote cookie git@github.com:illuminate/cookie.git
remote database git@github.com:illuminate/database.git
remote encryption git@github.com:illuminate/encryption.git
remote events git@github.com:illuminate/events.git
remote filesystem git@github.com:illuminate/filesystem.git
remote hashing git@github.com:illuminate/hashing.git
remote http git@github.com:illuminate/http.git
remote log git@github.com:illuminate/log.git
remote macroable git@github.com:illuminate/macroable.git
remote mail git@github.com:illuminate/mail.git
remote notifications git@github.com:illuminate/notifications.git
remote pagination git@github.com:illuminate/pagination.git
remote pipeline git@github.com:illuminate/pipeline.git
remote queue git@github.com:illuminate/queue.git
remote redis git@github.com:illuminate/redis.git
remote routing git@github.com:illuminate/routing.git
remote session git@github.com:illuminate/session.git
remote support git@github.com:illuminate/support.git
remote testing git@github.com:illuminate/testing.git
remote translation git@github.com:illuminate/translation.git
remote validation git@github.com:illuminate/validation.git
remote view git@github.com:illuminate/view.git
