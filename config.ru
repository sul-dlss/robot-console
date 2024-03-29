# frozen_string_literal: true

require_relative 'config/boot'
require 'rack/session'
require 'sidekiq/web'

use Rack::Session::Cookie, secret: Settings.secret_token, same_site: true, max_age: 86_400
run Sidekiq::Web
