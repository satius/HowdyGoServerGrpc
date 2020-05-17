Getting Started
----------------------------------------
1. Install [protobuf compiler](https://github.com/google/protobuf/blob/master/README.md#protocol-compiler-installation)

1. Install the protoc Go plugin

   ```
   $ go get -u github.com/golang/protobuf/protoc-gen-go
   ```
   
1. Generate Go code by proto file

   ```
   $ ./local.sh gen
   ```

1. Start server

   ```
   $ ./local.sh start
   ```
