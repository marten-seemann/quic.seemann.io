#!/bin/bash

# run apt-get install letsencrypt first
certbot certonly --standalone --agree-tos -m martenseemann@gmail.com -d quic.seemann.io -n

cp /etc/letsencrypt/live/quic.seemann.io/privkey.pem .
cp /etc/letsencrypt/live/quic.seemann.io/fullchain.pem .
