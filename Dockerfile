FROM golang:1.14.3-alpine3.11 AS build

ADD . /go/src/github.com/sugiyamas/HowdyGoServerGrpc

WORKDIR /go/src/github.com/sugiyamas/HowdyGoServerGrpc

RUN go build howdy_server/main.go

FROM alpine:3.11

COPY --from=build /go/src/github.com/sugiyamas/HowdyGoServerGrpc/main /HowdyGoServerGrpc

ENV GOPATH=/go

#ENTRYPOINT ["./HowdyGoServerGrpc"]

ENTRYPOINT [ "./HowdyGoServerGrpc","--host", "0.0.0.0", "--port", "80", "--scheme", "http"]
