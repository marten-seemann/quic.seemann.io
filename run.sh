#!/bin/bash

cd $GOPATH/src/github.com/lucas-clemente/quic-go

if [ $DEBUG ]; then
  go run example/main.go -v -www /var/www -bind 0.0.0.0:6121
else
  go run example/main.go -www /var/www -bind 0.0.0.0:6121
fi
