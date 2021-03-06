require 'simplecov'
require 'simplecov-console'
require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end

  module RSpecMixin
    include Rack::Test::Methods
    def app() Chitter end
  end

  RSpec.configure { |c| c.include RSpecMixin }

end
