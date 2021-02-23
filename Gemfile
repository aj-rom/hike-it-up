# frozen_string_literal: true

source 'http://rubygems.org'

ruby "2.6.0"

gem 'sinatra'
gem 'activerecord', '~> 5.2', '>= 5.2.0', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rack'
gem 'require_all'
gem 'rack-flash3'
gem 'bcrypt'

group :development, :production do
  gem 'rake'
end

group :production do
  gem 'pg', '~> 0.18.4'
end

group :development do
  gem 'pry'
  gem 'shotgun'
  gem 'tux'
end