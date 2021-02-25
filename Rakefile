ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

task :console do
  Pry.start
end

namespace :production do
  env_name = "production"
  desc "Seeds the #{env_name} database"
  task :seed do
    exec("rake db:seed APP_ENV=production")
  end

  desc "Start the #{env_name} server"
  task :start do
    exec("puma -e #{env_name} -b tcp://127.0.0.1:9292")
  end

end

namespace :dev do
  env_name = "development"

  desc "Start the #{env_name} server"
  task :start do
    exec("shotgun")
  end

end