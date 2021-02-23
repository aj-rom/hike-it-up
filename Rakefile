ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

task :console do
  Pry.start
end

namespace :dev do
  ENV["SINATRA_ENV"] = "development"
  ENV["APP_ENV"] = "development"

  desc 'Quickly creates, migrates, then seeds the development database and starts the server.'
  task :quick_start do
    Rake::Task["dev:setup"]

  end

  desc 'Creates the development databases, runs migrations, and seeds'
  task :setup do
    Rake::Task["db:create"].invoke
    Rake::Task["db:migrate"].invoke
    Rake::Task["db:seed"].invoke
  end

  desc 'Starts the server'
  task :start do
    exec("shotgun APP_ENV=development")
  end

  def execute(str)
    exec("rake APP_ENV=development #{str}")
  end

end

namespace :production do
  ENV["SINATRA_ENV"] = "production"
  ENV["APP_ENV"] = "production"

  desc 'Quickly creates, migrates, then starts the production server.'
  task :quick_start do
    Rake::Task["production:setup"].invoke
    Rake::Task["production:start"].invoke
  end

  desc 'Creates the production database, and runs migrations.'
  task :setup do
    execute("db:create")
    execute("db:migrate")
  end

  desc 'Starts the server'
  task :start do
    exec("puma -e production -b tcp://127.0.0.1:9292")
  end

  desc 'Drops the production database.'
  task :drop do
    execute("db:drop")
  end

  def execute(str)
    exec("rake APP_ENV=production #{str}")
  end

end

