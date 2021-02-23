ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

task :console do
  Pry.start
end

task :dev do
  exec("shotgun")
end

task :start do
  exec("puma -e production -b tcp://127.0.0.1:9292")
end