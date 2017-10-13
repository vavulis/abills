#!/bin/sh

#		8:0  -  8:5 > 5 4 3 2 1 0
if_ix0_0=$(vmstat -ai | grep "ix0:que 0" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 5 -x $if_ix0_0
if_ix0_1=$(vmstat -ai | grep "ix0:que 1" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 4 -x $if_ix0_1
if_ix0_2=$(vmstat -ai | grep "ix0:que 2" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 3 -x $if_ix0_2
if_ix0_3=$(vmstat -ai | grep "ix0:que 3" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 2 -x $if_ix0_3
if_ix0_4=$(vmstat -ai | grep "ix0:que 4" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 1 -x $if_ix0_4
if_ix0_5=$(vmstat -ai | grep "ix0:que 5" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 0 -x $if_ix0_5
#if_ix0_6=$(vmstat -ai | grep "ix0:que 6" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 5 -x $if_ix0_6
#if_ix0_7=$(vmstat -ai | grep "ix0:que 7" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 4 -x $if_ix0_7
if_ix0_8=$(vmstat -ai | grep "ix0:link" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 3 -x $if_ix0_8

#		9:0  -  9:5 > 6 10 11 7 8 9
if_ix1_0=$(vmstat -ai | grep "ix1:que 0" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 6 -x $if_ix1_0
if_ix1_1=$(vmstat -ai | grep "ix1:que 1" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 10 -x $if_ix1_1
if_ix1_2=$(vmstat -ai | grep "ix1:que 2" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 11 -x $if_ix1_2
if_ix1_3=$(vmstat -ai | grep "ix1:que 3" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 7 -x $if_ix1_3
if_ix1_4=$(vmstat -ai | grep "ix1:que 4" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 8 -x $if_ix1_4
if_ix1_5=$(vmstat -ai | grep "ix1:que 5" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 9 -x $if_ix1_5
#if_ix1_6=$(vmstat -ai | grep "ix1:que 6" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 9 -x $if_ix1_6
#if_ix1_7=$(vmstat -ai | grep "ix1:que 7" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 10 -x $if_ix1_7
if_ix1_8=$(vmstat -ai | grep "ix1:link" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 10 -x $if_ix1_8

# IGB's
#		0:0  -  0:5 > 6 7 8 9 10 11
if_igb0_0=$(vmstat -ai | grep "igb0:que 0" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 6 -x $if_igb0_0
if_igb0_1=$(vmstat -ai | grep "igb0:que 1" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 7 -x $if_igb0_1
if_igb0_2=$(vmstat -ai | grep "igb0:que 2" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 8 -x $if_igb0_2
if_igb0_3=$(vmstat -ai | grep "igb0:que 3" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 9 -x $if_igb0_3
if_igb0_4=$(vmstat -ai | grep "igb0:que 4" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 10 -x $if_igb0_4
if_igb0_5=$(vmstat -ai | grep "igb0:que 5" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 11 -x $if_igb0_5
if_igb0_8=$(vmstat -ai | grep "igb0:link" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 9 -x $if_igb0_8


#		1:0  -  1:5 > 7 8 9 10 11 6
if_igb1_0=$(vmstat -ai | grep "igb1:que 0" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 7 -x $if_igb1_0
if_igb1_1=$(vmstat -ai | grep "igb1:que 1" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 8 -x $if_igb1_1
if_igb1_2=$(vmstat -ai | grep "igb1:que 2" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 9 -x $if_igb1_2
if_igb1_3=$(vmstat -ai | grep "igb1:que 3" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 10 -x $if_igb1_3
if_igb1_4=$(vmstat -ai | grep "igb1:que 4" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 11 -x $if_igb1_4
if_igb1_5=$(vmstat -ai | grep "igb1:que 5" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 6 -x $if_igb1_5
if_igb1_8=$(vmstat -ai | grep "igb1:link" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 8 -x $if_igb1_8


#		2:0  -  2:5 > 8 9 10 11 6 7
if_igb2_0=$(vmstat -ai | grep "igb2:que 0" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 8 -x $if_igb2_0
if_igb2_1=$(vmstat -ai | grep "igb2:que 1" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 9 -x $if_igb2_1
if_igb2_2=$(vmstat -ai | grep "igb2:que 2" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 10 -x $if_igb2_2
if_igb2_3=$(vmstat -ai | grep "igb2:que 3" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 11 -x $if_igb2_3
if_igb2_4=$(vmstat -ai | grep "igb2:que 4" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 6 -x $if_igb2_4
if_igb2_5=$(vmstat -ai | grep "igb2:que 5" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 7 -x $if_igb2_5
if_igb2_8=$(vmstat -ai | grep "igb2:link" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 7 -x $if_igb2_8


#		3:0  -  3:5 > 9 10 11 6 7 8
if_igb3_0=$(vmstat -ai | grep "igb3:que 0" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 9 -x $if_igb3_0
if_igb3_1=$(vmstat -ai | grep "igb3:que 1" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 10 -x $if_igb3_1
if_igb3_2=$(vmstat -ai | grep "igb3:que 2" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 11 -x $if_igb3_2
if_igb3_3=$(vmstat -ai | grep "igb3:que 3" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 6 -x $if_igb3_3
if_igb3_4=$(vmstat -ai | grep "igb3:que 4" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 7 -x $if_igb3_4
if_igb3_5=$(vmstat -ai | grep "igb3:que 5" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 8 -x $if_igb3_5
if_igb3_8=$(vmstat -ai | grep "igb3:link" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 6 -x $if_igb3_8


#		4:0  -  4:5 > 10 11 6 7 8 9
if_igb4_0=$(vmstat -ai | grep "igb4:que 0" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 10 -x $if_igb4_0
if_igb4_1=$(vmstat -ai | grep "igb4:que 1" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 11 -x $if_igb4_1
if_igb4_2=$(vmstat -ai | grep "igb4:que 2" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 6 -x $if_igb4_2
if_igb4_3=$(vmstat -ai | grep "igb4:que 3" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 7 -x $if_igb4_3
if_igb4_4=$(vmstat -ai | grep "igb4:que 4" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 8 -x $if_igb4_4
if_igb4_5=$(vmstat -ai | grep "igb4:que 5" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 9 -x $if_igb4_5
if_igb4_8=$(vmstat -ai | grep "igb4:link" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 11 -x $if_igb4_8


#		5:0  -  5:5 > 11 6 7 8 9 10
if_igb5_0=$(vmstat -ai | grep "igb5:que 0" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 11 -x $if_igb5_0
if_igb5_1=$(vmstat -ai | grep "igb5:que 1" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 6 -x $if_igb5_1
if_igb5_2=$(vmstat -ai | grep "igb5:que 2" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 7 -x $if_igb5_2
if_igb5_3=$(vmstat -ai | grep "igb5:que 3" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 8 -x $if_igb5_3
if_igb5_4=$(vmstat -ai | grep "igb5:que 4" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 9 -x $if_igb5_4
if_igb5_5=$(vmstat -ai | grep "igb5:que 5" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 10 -x $if_igb5_5
if_igb5_8=$(vmstat -ai | grep "igb5:link" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 10 -x $if_igb5_8


#		6:0  -  6:5 > 6 11 10 9 8 7
if_igb6_0=$(vmstat -ai | grep "igb6:que 0" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 6 -x $if_igb6_0
if_igb6_1=$(vmstat -ai | grep "igb6:que 1" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 11 -x $if_igb6_1
if_igb6_2=$(vmstat -ai | grep "igb6:que 2" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 10 -x $if_igb6_2
if_igb6_3=$(vmstat -ai | grep "igb6:que 3" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 9 -x $if_igb6_3
if_igb6_4=$(vmstat -ai | grep "igb6:que 4" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 8 -x $if_igb6_4
if_igb6_5=$(vmstat -ai | grep "igb6:que 5" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 7 -x $if_igb6_5
if_igb6_8=$(vmstat -ai | grep "igb6:link" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 10 -x $if_igb6_8


#		7:0  -  7:5 > 7 6 11 10 9 8
if_igb7_0=$(vmstat -ai | grep "igb7:que 0" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 7 -x $if_igb7_0
if_igb7_1=$(vmstat -ai | grep "igb7:que 1" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 6 -x $if_igb7_1
if_igb7_2=$(vmstat -ai | grep "igb7:que 2" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 11 -x $if_igb7_2
if_igb7_3=$(vmstat -ai | grep "igb7:que 3" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 10 -x $if_igb7_3
if_igb7_4=$(vmstat -ai | grep "igb7:que 4" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 9 -x $if_igb7_4
if_igb7_5=$(vmstat -ai | grep "igb7:que 5" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 8 -x $if_igb7_5
if_igb7_8=$(vmstat -ai | grep "igb7:link" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 11 -x $if_igb7_8

#		em0 - 11:10 > 11 10
if_em0=$(vmstat -ai | grep "em0:rx 0" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 11 -x $if_em0
if_em0tx=$(vmstat -ai | grep "em0:tx 0" | cut -d: -f1 | tr -cd '\012[0-9]')
cpuset -l 10 -x $if_em0tx

if_dummynet=$(procstat -at | grep "dummynet" | cut -f6 -d' ' | tr -cd '\012[0-9]')
cpuset -l 0 -t $if_dummynet

#/usr/sbin/ngctl -f - << -EOF
/usr/sbin/ngctl mkpeer ipfw: nat 1 out
/usr/sbin/ngctl name ipfw:1 PPP_NAT
/usr/sbin/ngctl connect ipfw: PPP_NAT: 2 in
/usr/sbin/ngctl msg PPP_NAT: setaliasaddr 91.211.16.46
#EOF

#if_em1=$(vmstat -ai | grep "em1:rx 0" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 1 -x $if_em1
#if_em1tx=$(vmstat -ai | grep "em1:tx 0" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 0 -x $if_em1tx

#if_igb0_0=$(vmstat -ai | grep "igb0:que 0" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 0 -x $if_igb0_0
#if_igb0_1=$(vmstat -ai | grep "igb0:que 1" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 1 -x $if_igb0_1
#if_igb0_2=$(vmstat -ai | grep "igb0:que 2" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 2 -x $if_igb0_2
#if_igb0_3=$(vmstat -ai | grep "igb0:que 3" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 3 -x $if_igb0_3

#if_igb1_0=$(vmstat -ai | grep "igb1:que 0" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 3 -x $if_igb1_0
#if_igb1_1=$(vmstat -ai | grep "igb1:que 1" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 2 -x $if_igb1_1
#if_igb1_2=$(vmstat -ai | grep "igb1:que 2" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 1 -x $if_igb1_2
#if_igb1_3=$(vmstat -ai | grep "igb1:que 3" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 0 -x $if_igb1_3

#/etc/rc.d/statist.sh &

#if_em1=$(vmstat -ai | grep "em1:rx 0" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 2 -x $if_em1
#if_em1tx=$(vmstat -ai | grep "em1:tx 0" | cut -d: -f1 | tr -cd '\012[0-9]')
#cpuset -l 1 -x $if_em1tx


# Static ARP-table loader

#arp -s 192.168.1.1 00:12:34:56:78:3f pub
#arp -s 192.168.8.2 00:0b:6a:6f:e4:7f pub
#arp -s 192.168.8.3 00:06:4f:7a:50:64 pub
#arp -s 192.168.1.232 00:1b:21:97:44:5c pub
#arp -s 192.168.8.1 00:1b:21:97:44:5c pub
