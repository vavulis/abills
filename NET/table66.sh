#!/bin/sh

/sbin/ipfw table 66 flush

/usr/local/bin/dig +short -f /usr/NET/table66.txt | grep '\([[:digit:]]\{1,3\}\.\)\{3\}[[:digit:]]\{1,3\}' | xargs -L1 ipfw table 66 add

