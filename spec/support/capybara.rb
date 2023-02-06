RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    # driven_by :selenium_chrome #chrome立ち上がる
    driven_by :selenium_chrome_headless #chrome立ち上がらない
  end
end