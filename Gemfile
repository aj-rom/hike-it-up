# frozen_string_literal: true

source 'http://rubygems.org'

ruby "2.6.3"

gem 'activerecord', '~> 6.1', '>= 6.1.3', :require => 'active_record'
gem 'bcrypt'
gem 'rack-flash3'
gem 'rake'
gem 'require_all'
gem 'sinatra'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'

group :development, :production do
  gem 'pg', '~> 1.2', '>= 1.2.3'
end

group :production do
  gem 'puma'
end

group :development do
  gem 'thin'
  gem 'shotgun'
  gem 'pry'
end