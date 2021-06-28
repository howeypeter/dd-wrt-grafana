#!/bin/sh
date="$( date +%s )"
gateway=192.168.86.1
pingResult=`ping -c 10 $gateway | tail -2`
packet=`echo "$pingResult" |grep "packet loss" | cut -d "," -f 3 | cut -d " " -f 2| sed 's/.$//'`
gateway=`echo "$pingResult" |grep "round-trip" | cut -d "=" -f 2 | cut -d "/" -f 1`
echo "ddwrt.perf.ping.gateway.packetloss.percent $packet $date" | nc $server $port ;
echo "ddwrt.perf.ping.gateway.latency $gateway $date" | nc $server $port ;
