# frozen_string_literal: true

# Sidekiq web console fails to render without this, with log entries like:
#   Exception ArgumentError in Rack application object (invalid byte sequence in US-ASCII)
# See also https://docs.ruby-lang.org/en/3.4/encodings_rdoc.html
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

require_relative 'config/boot'
require 'rack/session'
require 'sidekiq/web'

use Rack::Session::Cookie, secret: Settings.secret_token, same_site: true, max_age: 86_400
run Sidekiq::Web
