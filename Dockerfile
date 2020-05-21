FROM golang:1.14.3-alpine3.11

ADD . /go/src/github.com/sugiyamas/HowdyGoServerGrpc

WORKDIR /go/src/github.com/sugiyamas/HowdyGoServerGrpc

RUN go build howdy_server/main.go

#WORKDIR /go/src/github.com/sugiyamas/HowdyGoServerGrpc/howdyworld/howdy_server
#
#RUN go build /go/src/github.com/sugiyamas/HowdyGoServerGrpc/howdyworld/howdy_server/main.go

#ENTRYPOINT
