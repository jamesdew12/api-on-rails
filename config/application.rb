require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module MusicSearcher
  class Application < Rails::Application
    config.generators do |g|
      g.test_framework :minitest, spec: true
    end
  end
end
