require 'rubygems'

ENV["RAILS_ENV"] ||= 'test'

require "rails/application"
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.mock_with :rspec
  config.expect_with :rspec
  config.after(:all) do
    p "All tests finished."
  end
end

[ "support/config/*.rb", "support/*.rb" ].each do |path|
  Dir["#{File.dirname(__FILE__)}/#{path}"].each do |file|
    require file
  end
end