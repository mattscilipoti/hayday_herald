source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'pg'

gem 'devise'#, "~> 2.0.4"
gem 'haml-rails'
gem 'jquery-rails'
gem 'simple_form'
gem 'thin'
gem 'typus'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'twitter-bootstrap-rails'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :development, :test do
  gem 'awesome_print'
  gem 'capybara'
  gem 'debugger'
  gem 'rspec-rails'
  gem 'sqlite3'
end

group :development do
  gem 'foreman'
  gem 'github', ">= 0.7.0", :require => nil
  gem 'heroku', :require => false
  gem 'hpricot', :require => nil # for html2haml
  gem 'ruby_parser', :require => nil # for html2haml
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'capybara', :require => false
  gem 'database_cleaner', :require => false
  # zeus & in-memory db don't play well together
  #gem 'memory_test_fix', :github => 'stepahn/memory_test_fix'
end

