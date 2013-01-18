source :rubygems

# We don't use nokogiri directly, but capybara will pull it in
# and it needs to be above pg to prevent this warning:
# WARNING: Nokogiri was built against LibXML version 2.8.0,
#                                              but has dynamically loaded 2.7.8
# See <https://github.com/sparklemotion/nokogiri/issues/742> for more info.

gem 'nokogiri' 

# All 3.2.x versions of rails prior to 3.2.11 have a trivially exploitable
# vulnerability.

gem 'rails', '~> 3.2.11'

gem 'pg'

gem 'therubyracer', :require => 'v8'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'foreigner'
gem 'seed-fu'
gem 'tzinfo'
gem 'formtastic'
gem 'haml-rails'
gem 'will_paginate'
gem 'devise'

group :development do
  gem 'capistrano', :require => false
  gem 'rvm-capistrano', :require => false
  gem 'autotest-fsevent' # TODO: make this Mac-specific
  gem 'autotest-growl' # TODO: make this Mac-specific
end

group :test, :development do
  gem 'debugger'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'webrat'
  gem 'pickle'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'cover_me', '~> 1.2.0'
  gem 'database_cleaner'
  gem 'sqlite3'
  gem 'autotest-rails'
  gem 'timecop'
  gem 'be_valid_asset'
end
