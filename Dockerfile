FROM golang:1.12.5-stretch

RUN go get github.com/lucas-clemente/quic-go/... && \
  cd $GOPATH/src/github.com/lucas-clemente/quic-go && \
  git checkout interop

EXPOSE 6121/udp
EXPOSE 6121
VOLUME /var/www

COPY run.sh .
RUN chmod +x run.sh

COPY privkey.pem $GOPATH/src/github.com/lucas-clemente/quic-go/internal/testdata/priv.key
COPY fullchain.pem $GOPATH/src/github.com/lucas-clemente/quic-go/internal/testdata/cert.pem

ENTRYPOINT ./run.sh
