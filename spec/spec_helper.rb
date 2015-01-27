require_relative "../spec/helpers/authhelper"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.include AuthRequestHelper, :type => :request
  config.include AuthHelper, :type => :controller

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

#data_base cleaner transaction / truncation
  config.before(:suite) do
    DatabaseCleaner.strategy = :deletion
    DatabaseCleaner.clean_with(:deletion)
  end


end
