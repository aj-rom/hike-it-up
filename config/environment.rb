ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  ENV['DATABASE_URL'] || 'postgres://localhost/hikedb'
)

require_all 'app'
