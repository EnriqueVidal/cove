source 'http://rubygems.org'

gem 'rails', '3.0.9'
gem 'sqlite3'
gem 'kaminari'
gem 'client_side_validations', '3.0.2'
gem 'compass', ">= 0.11.1"
gem 'devise'
gem 'jquery-rails'
gem 'acl9'

group :test do
  gem 'factory_girl_rails'
  gem 'mocha', :require => false
  gem 'turn'
end

group :development do
  gem 'metric_fu', :require => false
end

group :test, :development do
  gem 'sqlite3-ruby', :require => 'sqlite3'
end

group :production do
  gem 'ruby-oci8'
  gem 'activerecord-oracle_enhanced-adapter', :require => 'oci8'
end
