#!/bin/bash
echo -------------------------
echo starting motion-janitor
echo -------------------------
date
echo ""
echo deleting motion directories older than $OLDER_THAN_DAYS days
echo ""

find /motion -type d -mtime +$OLDER_THAN_DAYS | xargs rm -rf