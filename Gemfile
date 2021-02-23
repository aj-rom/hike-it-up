ruby "2.6.0"
source 'http://rubygems.org'

gem 'sinatra'
gem 'activerecord', '~> 5.2', '>= 5.2.0', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'pg', '~> 0.18.4'
gem 'rack-flash3'
gem 'thin'
gem 'shotgun'

group :development do
  gem 'pry'
  gem 'tux'
end

group :production do
  gem 'thin'  
  gem 'bcrypt'
end