#!/bin/bash
HACFG="/usr/local/etc/haproxy/haproxy.cfg"

cp "${HACFG}.base" $HACFG
for h in $(env |grep HA_HOST|cut -d '=' -f 2); do
	echo "	server $h $h:8081 maxconn 20 check">>$HACFG;
done

cat $HACFG

haproxy -f $HACFG
