# frozen_string_literal: true

source 'http://rubygems.org'

ruby "3.0.0"

gem 'activerecord', '~> 6.1', '>= 6.1.3', :require => 'active_record'
gem 'bcrypt'
gem 'rack-flash3'
gem 'rake'
gem 'require_all'
gem 'sinatra'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'pg', '~> 1.2', '>= 1.2.3'

group :production do
  gem 'puma', '~> 5.6'
end

group :development do
  # uncomment the line below for development using shotgun
  #gem 'thin'
  # gem 'shotgun'
  gem 'pry'
end