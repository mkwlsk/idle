#!/bin/bash

USERCOUNT=$(who | wc -l)

if [ $USERCOUNT -gt 0 ]; then
    echo "Found $USERCOUNT active session(s). Do nothing."
else
    echo "Found no active sessions. Shutting down."
    /usr/sbin/shutdown --poweroff
fi
