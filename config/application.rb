require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Overtime2016
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.autoload_paths << Rails.root.join("lib")
  end
end
