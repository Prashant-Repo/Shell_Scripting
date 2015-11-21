#!/bin/bash
LOG=/var/log/secure
if [ -n "$1" ]
then
NEWUSER="$1"
else
NEWUSER="root"
fi
MESSAGE="Failed password for $NEWUSER"
grep -i "$MESSAGE" "$LOG"
