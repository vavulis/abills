#!/usr/local/bin/bash

 [ $# -lt 1 ] && echo "Usage:$0 <ip-address> [N packets] [Size bites]" >&2 && exit 1

  Dest=$1
  Cnt=$2
  Size=$3
  ok=0
  notok=0
  params=0

   echo "--------------------------------------------------------------------------------"

    if [[ $Cnt == "" ]]; then
	echo "N-pack's do not provide. Using 20 packets."
	((Cnt=20))
	((params=1))
    fi

    if [[ $Size == "" ]]; then
	echo "Size pack's do not provide. Using 1472 bite (1500 bite MTU)"
	((Size=1472))
	((params=1))
    fi

    if [[ $params != 0 ]]; then
	echo "Using:"
	echo "rapid <ip-address> [N-packet's] [Size packet's]"
    fi

       start=$(date '+%Y.%m.%d %T')
       echo "--------------------------------------------------------------------------------"
       echo "Pinging host: $Dest"
       echo "N-packet's:   $Cnt"
       echo "Size pack's:  $Size bite"
       echo "Wait time:    200 ms"
       echo "Start check:  $start"
       echo
       i=1
       while ((i<=Cnt))
       do
		ping -n -W 200 -c 1 -s $Size -q $Dest > /dev/null 2>&1
		RET=$?
	    if [ ${RET} -eq 0 ]; then
		((ok+=1))
		echo -ne '!'
	    else
		((notok+=1))
		echo -ne '.'
	    fi
	    ((i+=1))
	done
echo
echo
end=$(date '+%Y-%m-%d %T')
echo "End check:     $end"
success=`echo "$ok * 100 / $Cnt" | bc -l -e 'scale=3'`
loss=`echo "100 - $success" | bc -l -e 'scale=3'`
echo "Send: $Cnt / Receive: $ok ($success %) / Lost: $notok ($loss %)"
echo "--------------------------------------------------------------------------------"
