#!/bin/sh

mpd_host='127.0.0.1'
mpd_port='5005'
mpd_user='admin'
mpd_pass='PAS_Wo-rD'

echo "________________________________________________________________________"
date
echo "---"

# 1       2               3       4               5               6       7                       8               9
# ng881   10.10.81.69     B5-889  2455270-B5-889  igb4-895        895     2455270-igb4-895        perv1_179       00:30:67:b6:b4:08

doubles_IP_1=`ifconfig | grep '176.124.' | sort | uniq -f 2 -d | cut -f 4 -d' '`
echo $doubles_IP_1

for ipD in $doubles_IP_1; do

    doubles_IF_1=`printf "$mpd_user\r$mpd_pass\rshow sessions\rexit\r" | nc -4n $mpd_host $mpd_port | grep -w $ipD | awk '{print $5}'`
    echo $doubles_IF_1

	for ifD in $doubles_IF_1; do

		infoIF=`printf "$mpd_user\r$mpd_pass\rshow sessions\rexit\r" | nc -4n $mpd_host $mpd_port | grep -w $ifD | awk '{print $5," - ",$8," :: ",$9}'`
		echo "  $infoIF."
	done

	for ifD in $doubles_IF_1; do

		destroedIF=`printf "$mpd_user\r$mpd_pass\rlink $ifD\rclose\rexit\r" | nc -4n $mpd_host $mpd_port`
		echo " $ifD closed."
	done
done

doubles_IP_1=`ifconfig | grep '31.133.' | sort | uniq -f 2 -d | cut -f 4 -d' '`
echo $doubles_IP_1

for ipD in $doubles_IP_1; do

    doubles_IF_1=`printf "$mpd_user\r$mpd_pass\rshow sessions\rexit\r" | nc -4n $mpd_host $mpd_port | grep -w $ipD | awk '{print $5}'`
    echo $doubles_IF_1

	for ifD in $doubles_IF_1; do

		infoIF=`printf "$mpd_user\r$mpd_pass\rshow sessions\rexit\r" | nc -4n $mpd_host $mpd_port | grep -w $ifD | awk '{print $5," - ",$8," :: ",$9}'`
		echo "  $infoIF."
	done

	for ifD in $doubles_IF_1; do

		destroedIF=`printf "$mpd_user\r$mpd_pass\rlink $ifD\rclose\rexit\r" | nc -4n $mpd_host $mpd_port`
		echo " $ifD closed."
	done
done

doubles_IP_1=`ifconfig | grep '10.10.' | sort | uniq -f 2 -d | cut -f 4 -d' '`
echo $doubles_IP_1

for ipD in $doubles_IP_1; do

    doubles_IF_1=`printf "$mpd_user\r$mpd_pass\rshow sessions\rexit\r" | nc -4n $mpd_host $mpd_port | grep -w $ipD | awk '{print $5}'`
    echo $doubles_IF_1

	for ifD in $doubles_IF_1; do

		infoIF=`printf "$mpd_user\r$mpd_pass\rshow sessions\rexit\r" | nc -4n $mpd_host $mpd_port | grep -w $ifD | awk '{print $5," - ",$8," :: ",$9}'`
		echo "  $infoIF."
	done

	for ifD in $doubles_IF_1; do

		destroedIF=`printf "$mpd_user\r$mpd_pass\rlink $ifD\rclose\rexit\r" | nc -4n $mpd_host $mpd_port`
		echo " $ifD closed."
	done
done

