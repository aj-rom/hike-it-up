ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  adapter:    'postgresql',
  host:       'localhost',
  database: "hike-it-up-#{ENV["SINATRA_ENV"]}",
  port: 5433
)

require_all 'app'