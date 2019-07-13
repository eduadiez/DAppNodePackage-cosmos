#!/bin/sh
# Start the first process

mkdir -p /root/.gaiad/config

cp /usr/src/app/genesis.json /root/.gaiad/config/genesis.json

cp /usr/src/app/config.toml /root/.gaiad/config/config.toml

cp /usr/src/app/*.pem /etc/nginx/certs
cp /usr/src/app/*.pem /root/.gaiad/config

nginx > /dev/null 2>&1 & 

/bin/sh /usr/bin/start_rest.sh > /dev/null 2>&1 &

gaiad start
