ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'capybara/rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = true
  #wraps each spec in an active record transaction, which is rolled back after it runs. 
  #Do not need to delete all entries in test database afte each spec. 

  
  config.infer_spec_type_from_file_location!
end
