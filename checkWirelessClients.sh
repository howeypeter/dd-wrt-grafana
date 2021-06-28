#!/bin/sh
date="$( date +%s )"
ath0=`wl_atheros -i ath0 assoclist | wc -l`
ath1=`wl_atheros -i ath1 assoclist | wc -l`
echo "ddwrt.perf.wireless.ath0.clients $ath0 $date" | nc $server $port ;
echo "ddwrt.perf.wireless.ath1.clients $ath1 $date" | nc $server $port ;
