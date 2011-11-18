source 'http://rubygems.org'

gem 'rails', '~> 3.1.0'
gem 'pg', '~> 0.11.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.1.0'
  gem 'coffee-rails', '~> 3.1.0'
  gem 'uglifier'
end

gem 'jquery-rails'

gem 'foreigner'
gem 'seed-fu', '2.0.1.rails31'
gem 'validation_reflection'
gem 'tzinfo'
gem 'formtastic-rails3', :require => 'formtastic'
gem 'haml-rails'
gem 'will_paginate'
gem 'devise'

group :development do
  gem 'capistrano', :require => false
  gem 'autotest-fsevent' # TODO: make this Mac-specific
  gem 'autotest-growl' # TODO: make this Mac-specific
end

group :test, :development do
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'rspec-rails'
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'pickle'
  gem 'timecop'
  gem 'be_valid_asset'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'cover_me', '~> 1.2.0'
  gem 'database_cleaner'
  gem 'sqlite3'
  gem 'autotest'
end
