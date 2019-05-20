FROM golang:1.12.5-stretch

RUN go get github.com/lucas-clemente/quic-go/... && \
  cd $GOPATH/src/github.com/lucas-clemente/quic-go && \
  git checkout interop

EXPOSE 6121/udp
VOLUME /var/www

COPY run.sh .
RUN chmod +x run.sh

ENTRYPOINT [ "sh", "-c", "./run.sh" ]
