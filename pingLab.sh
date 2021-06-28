#!/bin/sh
date="$( date +%s )"
labServer=192.168.86.99
pingResult=`ping -c 10 $labserver | tail -2`
packet=`echo "$pingResult" |grep "packet loss" | cut -d "," -f 3 | cut -d " " -f 2| sed 's/.$//'`
lab=`echo "$pingResult" |grep "round-trip" | cut -d "=" -f 2 | cut -d "/" -f 1`
echo "ddwrt.perf.ping.lab.packetloss.percent $packet $date" | nc $server $port ;
echo "ddwrt.perf.ping.lab.latency $lab $date" | nc $server $port ;
echo "ddwrt.perf.ping.lab.latency $lab $date"
