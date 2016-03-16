#!/bin/sh

sleep 2
for f in $(ls /root/jobs/); do
    curl -F "file=@/root/jobs/$f" http://dagobah:9000/api/import_job
done
