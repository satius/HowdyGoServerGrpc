# gen
if [ "x$1" = "xgen" ]; then
  protoc -I howdyworld/howdyworld/ howdyworld/howdyworld/howdyworld.proto --go_out=plugins=grpc:howdyworld/howdyworld/
fi

# start
if [ "x$1" = "xstart" ]; then
  go run howdyworld/howdy_server/main.go
fi
