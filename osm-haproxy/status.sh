#!/bin/bash

echo "show stat"|socat /var/run/haproxy/admin.sock stdio 1>/dev/stdout|grep $1|cut -d ',' -f 18
