# frozen_string_literal: true

require 'bundler'
Bundler.require(:default)

Config.setup do |config|
  # Name of the constant exposing loaded settings
  config.const_name = 'Settings'
  # Load environment variables from the `ENV` object and override any settings defined in files.
  #
  config.use_env = true

  # Define ENV variable prefix deciding which variables to load into config.
  #
  config.env_prefix = 'SETTINGS'

  # What string to use as level separator for settings loaded from ENV variables. Default value of '.' works well
  # with Heroku, but you might want to change it for example for '__' to easy override settings from command line, where
  # using dots in variable names might not be allowed (eg. Bash).
  #
  config.env_separator = '__'
end

puts File.expand_path(__dir__)
Config.load_and_set_settings(
  Config.setting_files(File.expand_path(__dir__), 'production')
)

# Load Resque configuration and controller
redis = Redis.new(host: Settings.redis.hostname,
                  port: Settings.redis.port,
                  thread_safe: true,
                  db: Settings.redis.db)

Resque.redis = Redis::Namespace.new(Settings.redis.namespace, redis: redis)
