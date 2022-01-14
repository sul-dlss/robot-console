# frozen_string_literal: true

require_relative 'config/boot'
require 'resque/server'

run Resque::Server.new
