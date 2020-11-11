require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Peeps
  class Application < Rails::Application
    config.middleware.insert_before 0, Rack::Cors, :debug => !Rails.env.production?, :logger => (-> { Rails.logger }) do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :patch, :delete, :options]
      end
    end
  end
end
