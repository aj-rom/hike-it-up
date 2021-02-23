ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

task :console do
  Pry.start
end

namespace :production do
  env_name = "production"
  env = "APP_ENV=#{env_name} SINATRA_ENV=#{env_name}"

  desc "Drop the #{env_name} database"
  task :drop do
    exec("rake db:drop #{env}")
  end

  desc "Create the #{env_name} database."
  task :create do
    exec("rake db:create #{env}")
  end

  desc "Migrate to the #{env_name} database"
  task :migrate do
    exec("rake db:migrate #{env}")
  end

  desc "Seed the #{env_name} database"
  task :seed do
    exec("rake db:seed #{env}")
  end

  desc "Start the #{env_name} server"
  task :start do
    exec("puma -e #{env_name} -b tcp://127.0.0.1:9292")
  end

  desc "Quickly creates and seeds the database for #{env_name}"
  task :setup do
    puts "Setting up the #{env_name} database..."
    Rake::Task["production:drop"].invoke
    Rake::Task["production:create"].invoke
    Rake::Task["production:migrate"].invoke
    Rake::Task["production:seed"].invoke
  end

end

namespace :dev do
  env_name = "development"
  env = "APP_ENV=#{env_name} SINATRA_ENV=#{env_name}"

  desc "Drop the #{env_name} database"
  task :drop do
    exec("rake db:drop #{env}")
  end

  desc "Create the #{env_name} database."
  task :create do
    exec("rake db:create #{env}")
  end

  desc "Migrate to the #{env_name} database"
  task :migrate do
    exec("rake db:migrate #{env}")
  end

  desc "Seed the #{env_name} database"
  task :seed do
    exec("rake db:seed #{env}")
  end

  desc "Start the #{env_name} server"
  task :start do
    exec("puma -e #{env_name} -b tcp://127.0.0.1:9292")
  end

  desc "Quickly creates and seeds the database for #{env_name}"
  task :setup do
    puts "Setting up the #{env_name} database..."
    Rake::Task["production:drop"].invoke
    Rake::Task["production:create"].invoke
    Rake::Task["production:migrate"].invoke
    Rake::Task["production:seed"].invoke
  end

end