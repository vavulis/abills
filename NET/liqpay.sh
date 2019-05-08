#!/bin/sh

/sbin/ipfw table 15 flush

/usr/local/bin/dig +short -f /usr/NET/liqpay.txt | grep '\([[:digit:]]\{1,3\}\.\)\{3\}[[:digit:]]\{1,3\}' | xargs -L1 ipfw table 15 add

