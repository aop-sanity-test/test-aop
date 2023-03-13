#!/bin/bash
for i in {1..$1}
do
    echo "Triggering the workflow# $i"
    curl -X POST -H "Content-Type: application/vnd.github+json" -H "Authorization: Bearer $2" -d '{"event_type":"aop-test-trigger","client_payload":{}}' $3
done