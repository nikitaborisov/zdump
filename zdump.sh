#!/bin/bash
tcpdump -i eth0 -w /data/$1 &
sleep 2
nodejs index.js $2
kill %1
sleep 1
