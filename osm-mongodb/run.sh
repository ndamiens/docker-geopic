#!/bin/bash
set -m

mongodb_cmd="mongod"
cmd="$mongodb_cmd --httpinterface --rest"
if [ "$AUTH" == "yes" ]; then
    cmd="$cmd --auth"
fi

if [ "$JOURNALING" == "no" ]; then
    cmd="$cmd --nojournal"
fi

if [ "$OPLOG_SIZE" != "" ]; then
    cmd="$cmd --oplogSize $OPLOG_SIZE"
fi

if [ "$REPL_SET" != "" ]; then
    cmd="$cmd --replSet $REPL_SET"
fi

if [ -f /data/db/keyfile ]; then
    cmd="$cmd --keyFile /data/db/keyfile"
fi

$cmd &

if [ ! -f /data/db/.mongodb_password_set ]; then
    /set_mongodb_password.sh
fi

fg

rm /data/mongod.lock
