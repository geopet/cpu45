source 'http://rubygems.org'

gem 'rails', '3.1.0'
gem 'pg', '0.11.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.1.0'
  gem 'coffee-rails', '~> 3.1.0'
  gem 'uglifier'
end

gem 'jquery-rails'


gem 'foreigner'
gem 'seed-fu'
gem 'validation_reflection'
gem 'tzinfo'
gem 'formtastic-rails3', :require => 'formtastic'
gem 'haml-rails'
gem 'will_paginate'
gem 'devise'

group :development do
  gem 'capistrano', :require => false
end

group :test, :development do
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'rspec-rails', :require => false
  gem 'cucumber-rails', :require => false
  gem 'capybara', :require => false
  gem 'factory_girl_rails', :require => false
  gem 'pickle', :require => false
  gem 'timecop', :require => false
  gem 'be_valid_asset', :require => false
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'cover_me', '>= 1.0.0.rc6', :require => false
  gem 'database_cleaner'
  gem 'sqlite3'
end
