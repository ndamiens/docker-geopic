#!/bin/bash

echo "enable server serveurs/$1"|socat /var/run/haproxy/admin.sock stdio
