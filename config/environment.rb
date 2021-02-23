ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  adapter:    'postgresql',
  host:       'localhost',
  database: 'postgres',
  port: 5433
)

require_all 'app'