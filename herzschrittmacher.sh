#!/bin/bash

DELAY=${1:-0}

if [ "${DELAY}" = "0" ]; then
	echo "Usage: $0 [delay]"
	echo "delay is in seconds!"
fi

while echo poke > /dev/herz 2> /dev/null && sleep $DELAY; do :; done
