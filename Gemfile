# frozen_string_literal: true

source 'http://rubygems.org'

ruby "3.0.0"

gem 'sinatra'
gem 'activerecord', '~> 6.1', '>= 6.1.3', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'rack-flash3'
gem 'bcrypt'

group :development, :production do
  gem 'puma'
  gem 'pg', '~> 1.2', '>= 1.2.3'
end

group :development do
  gem 'pry'
  gem 'shotgun'
  gem 'tux'
end