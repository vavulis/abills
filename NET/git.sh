#!/bin/sh

date
cd /usr/src
/usr/local/bin/git pull
/usr/local/bin/git add *
/usr/local/bin/git commit -a -m "*/3 update"
