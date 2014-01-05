require 'bundler'
Bundler.require(:default)

services_dir = 'services'
$LOAD_PATH.unshift(services_dir)
Dir[File.join(services_dir, "*.rb")].each {|file| require File.basename(file) }

RabbitRPC::Config.initialize!

SERVICE_NAME   = 'UserService'
QUEUE_ADDRESS  = 'amqp://localhost:5672'
PREFETCH_COUNT = 5

RabbitRPC::Connection.new(SERVICE_NAME, QUEUE_ADDRESS, PREFETCH_COUNT).listen!

