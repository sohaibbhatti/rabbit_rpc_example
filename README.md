# Rabbit-RPC Example

This sample app demonstrates the use of the
[Rabbit-RPC](https://github.com/sohaibbhatti/rabbit_rpc)

# Steps

1. clone the repository.
2. bundle install.
3. execute the server via the ```ruby server.rb``` command. The various
   services are defined in the services folder.
4. in another terminal execute the RPC invocations ```ruby
   client_invocation.rb```. This file initializes the RPC inovcations
   present in the config/rabbit_rpc.yml file and attempts to execute
   various service calls.
