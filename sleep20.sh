#!/bin/sh
sleep 20
export server="192.168.86.199"
export port="2003"
/jffs/checkConnections.sh &
/jffs/pingGateway.sh &
/jffs/pingGoogle.sh &
/jffs/pingLab.sh &
/jffs/checkLoad.sh &
/jffs/checkCPUTemp.sh &
/jffs/checkMem.sh &
/jffs/checkCPU.sh &
/jffs/checkWirelessClients.sh &
