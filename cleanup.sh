#!/bin/bash
find /motion -type d -mtime +30 | xargs rm -rf
