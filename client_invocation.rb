require 'bundler'
Bundler.require(:default)

require_relative 'services/user_service'

RabbitRPC::Config.initialize!

RabbitRPC::Client::UserService::User.create 123, 'bar'

RabbitRPC::Client::UserService::User.read

RabbitRPC::Client::UserService::Authorization.auth 'sohaibbbhatti@gmail.com', 'testing'

RabbitRPC::Client::UserService::User.one_way_send_mail
