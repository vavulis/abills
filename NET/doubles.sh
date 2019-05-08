#!/bin/sh

ifconfig | grep 176.124. | sort | uniq -f 2 -d | cut -f 4 -d' '
ifconfig | grep 31.133. | sort | uniq -f 2 -d | cut -f 4 -d' '
ifconfig | grep 10.10. | sort | uniq -f 2 -d | cut -f 4 -d' '
