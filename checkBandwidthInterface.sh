#!/bin/sh
# Check /sys/class/net/ for iterfaces
#
export server="192.168.86.199"
export port="2003"
interface="eth0 eth1 ath0 ath1 br0 tun1"
while true; do
     date="$( date +%s )"
     date
	for i in `echo $interface | sed s/" "/\\\n\/g`
	do
		rx=0
		tx=0
		rx=`cat /sys/class/net/$i/statistics/rx_bytes`
		tx=`cat /sys/class/net/$i/statistics/tx_bytes`
		echo "ddwrt.perf.network.$i.receive.bytes $rx $date" | nc $server $port ;
		echo "ddwrt.perf.network.$i.transmit.bytes $tx $date" | nc $server $port ;
	done
     sleep 20
done
