# gen
if [ "x$1" = "xgen" ]; then
  protoc howdyworld.proto --go_out=plugins=grpc:howdy_server/
fi

# start
if [ "x$1" = "xstart" ]; then
  go run howdyworld/howdy_server/main.go
fi
