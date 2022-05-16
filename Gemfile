# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'config'
gem 'resque', '~> 2.0'
gem 'honeybadger'

group :development, :test do
  gem 'rubocop'
end

group :development do
  gem 'capistrano-passenger', require: false
  gem 'capistrano-rvm', require: false
  gem 'dlss-capistrano', require: false
end
