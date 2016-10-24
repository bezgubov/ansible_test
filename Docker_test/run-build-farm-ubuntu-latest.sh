#!/bin/bash

if [ ! -d /home/bezgubov/git/admin/debs/ubuntu-latest ]; then
    echo 'Need git folder /home/bezgubov/git/admin/debs/ubuntu-latest'
    exit
fi

docker rm -f build-farm-ubuntu-latest
docker run -it -v /home/bezgubov/git/admin/debs/ubuntu-latest:/debs -v /mnt/aptly/incoming/ubuntu-latest:/incoming --hostname build-farm-ubuntu-latest --name build-farm-ubuntu-latest build-farm-ubuntu-latest.image:latest /bin/bash
