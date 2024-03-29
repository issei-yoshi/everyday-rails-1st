require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Projects
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.generators do |g|
      g.test_framework :rspec,
        # fixtures: false, #テストデータベースにレコードを作成するファイルを作成しない
        view_specs: false, #ビュースペックを作成しない
        helper_specs: false, #ヘルパーファイル用のスペックを使用しない
        routing_specs: false #routes用のスペックを作成しない
      # g.factory_bot false
    end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
