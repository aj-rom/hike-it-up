ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  adapter:    'postgresql',
  host:       'localhost',
  username:   'postgres',
  password:   '$$#TerryLuck12',
  port:       5433,
)

require './app/controllers/application_controller'
require_all 'app'
