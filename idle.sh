#!/bin/bash

LOGON_SESSIONS=$(who | wc -l)
MEDIASERVER_SESSIONS=$(ss -etH 'sport = 8096' | wc -l)

if [ $LOGON_SESSIONS -gt 0 ]; then
    echo "Found $LOGON_SESSIONS active session(s). Skipping."
elif [ $MEDIASERVER_SESSIONS -gt 1 ]; then
    echo "Found $MEDIASERVER_SESSIONS media server session(s). Skipping"
else
    echo "Found no active sessions. Shutting down."
    /usr/sbin/shutdown --poweroff
fi
