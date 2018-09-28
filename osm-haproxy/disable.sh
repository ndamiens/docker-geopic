#!/bin/bash

echo "disable server serveurs/$1"|socat /var/run/haproxy/admin.sock stdio
