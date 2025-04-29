#!/bin/bash

AP_NAME=$1
INTERFACE=$2

cleanup() {
	echo "Exiting..."
	./stop_services.sh
	nmcli connection delete $AP_NAME
	exit 1
}

trap cleanup SIGINT

if [ $# -lt 2 ]; then
  echo "usage: ./run.sh [AP name] [Interface]"
  exit 1
fi

./create_AP.sh $AP_NAME $INTERFACE
IP=$(ip -4 addr show $INTERFACE | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
./run_services.sh

echo "Hotspot $AP_NAME created, access IRC chat in http://$IP:9000"

while true; do
	sleep 5
done

