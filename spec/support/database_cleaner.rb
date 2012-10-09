# see: http://devblog.avdi.org/2012/08/31/configuring-database_cleaner-with-rails-rspec-capybara-and-selenium/
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation, {:except => %w[items]}

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.clean
  end

  config.before(:each) do
    DatabaseCleaner.clean
    #DatabaseCleaner.strategy = :transaction
    #DatabaseCleaner.start
  end

  config.before(:each, :js => true) do
    DatabaseCleaner.strategy = :truncation, {:except => %w[items]}
  end

  config.after(:each) do
    # Leave reminants for debugging.
    # Clean before each use instead
    #DatabaseCleaner.clean
  end

end
