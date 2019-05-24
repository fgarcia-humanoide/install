#!/bin/sh
find /home/postgres* -mtime +5 -exec rm {} \;

exit 0
