# gen
if [ "x$1" = "xgen" ]; then
  protoc howdyworld.proto --go_out=plugins=grpc:howdy_server/
fi

# start
if [ "x$1" = "xstart" ]; then
  docker build . -t howdy
  docker run --rm -p 8000:80 howdy ./main
fi
