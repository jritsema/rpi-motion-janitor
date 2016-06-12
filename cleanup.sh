#!/bin/bash

# delete directories older than 30 days
find /motion -type d -mtime +30 | xargs rm -rf
