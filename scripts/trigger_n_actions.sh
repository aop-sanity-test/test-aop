#!/bin/bash
echo "arg 1: $1"
echo "arg 2: $2"
echo "arg 3: $3"

count=$1
for i in $(seq $count); do
    echo "Triggering the workflow# $i"
    curl -X POST -H "Content-Type: application/vnd.github+json" -H "Authorization: Bearer $2" -d '{"event_type":"aop-test-trigger","client_payload":{}}' $3
done
