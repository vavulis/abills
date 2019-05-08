#!/bin/sh

/sbin/ipfw table 14 flush

/usr/local/bin/dig +short -f /usr/NET/jw.txt | grep '\([[:digit:]]\{1,3\}\.\)\{3\}[[:digit:]]\{1,3\}' | xargs -L1 ipfw table 14 add

