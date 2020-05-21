FROM golang:1.14.3-alpine3.11

ADD . /go/src/github.com/sugiyamas/HowdyGoServerGrpc

WORKDIR /go/src/github.com/sugiyamas/HowdyGoServerGrpc

RUN go build howdy_server/main.go
