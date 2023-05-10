# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'config'
gem 'honeybadger'
gem 'rack-session'
gem 'sidekiq', '~> 7.0'

source 'https://gems.contribsys.com/' do
  gem 'sidekiq-pro'
end

group :development, :test do
  gem 'rubocop'
end

group :development do
  gem 'capistrano-passenger', require: false
  gem 'dlss-capistrano', require: false
  gem 'puma'
end
