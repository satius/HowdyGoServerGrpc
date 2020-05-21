package main

import (
	"context"
	"log"
	"net"
	"strconv"

	howdyPb "github.com/sugiyamas/HowdyGoServerGrpc/howdy_server/com.github.sugiyamas/howdyworld"

	"google.golang.org/grpc"
)

const (
	port = 80
)

// server is used to implement howdyworld.GreeterServer.
type server struct {
	howdyPb.UnimplementedGreeterServer
}

// SayHowdy implements howdyworld.GreeterServer
func (s *server) SayHowdy(ctx context.Context, in *howdyPb.HowdyRequest) (*howdyPb.HowdyReply, error) {
	log.Printf("Received: %v", in.GetName())
	return &howdyPb.HowdyReply{Message: "Howdy " + in.GetName()}, nil
}

func main() {
	lis, err := net.Listen("tcp", ":"+strconv.Itoa(port))
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}
	s := grpc.NewServer()
	howdyPb.RegisterGreeterServer(s, &server{})

	log.Print("Listening...")

	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
