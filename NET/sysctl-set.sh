#!/bin/sh

mpd_host='127.0.0.1'
mpd_port='5005'
mpd_user='foo'
mpd_pass='bar'

sessions=`printf "$mpd_user\r$mpd_pass\rshow sessions\rexit\r" | nc -4n $mpd_host $mpd_port | grep -E 'ng[0-9]+' | awk '{print $5}'`

cnt=0

for i in $sessions; do
    cnt=$(($cnt + 1))
    done

echo $cnt