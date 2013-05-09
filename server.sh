#!/bin/sh
 
# streaming http with netcat on port 5000
( echo "HTTP/1.0 200 OK"; echo; while true; do echo 'hello'; done) | nc -l 5000
