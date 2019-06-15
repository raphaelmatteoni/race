require_relative 'boot'

require "rails"
require "action_controller/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Race
  class Application < Rails::Application
    config.load_defaults 5.2
    config.api_only = true
  end
end
