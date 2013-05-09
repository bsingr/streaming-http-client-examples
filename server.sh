#!/bin/sh

if [ -z "$CHUNKS" ]
then
   CHUNKS=1000
fi

# streaming http with netcat on port 5000
( echo "HTTP/1.0 200 OK"; echo; for ((i=0; i<$CHUNKS; i++)); do echo '.'; done; echo; exit 0) | nc -l 5000
