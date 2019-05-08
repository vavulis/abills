#!/bin/sh

echo "________________________________________________________________________"
date
echo "_____________________________"
ipfw -d show | sed -n '/^## Dynamic rules /,$p' | tail -n+2 | awk '$5 == "LIMIT" { k=sprintf("%s %s", $7, $10); a[k]++ } END { for (i in a) {printf "%3d %s\n", a[i], i }}' | sort -nr -k1,1 | head