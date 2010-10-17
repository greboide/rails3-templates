#----------------------------------------------------------------------------
# Basic production, development, and test gems
#----------------------------------------------------------------------------

run 'gem sources -a http://gems.github.com'

require 'rails'
require 'bundler'
require 'highline/import'

run 'rm Gemfile'
file 'Gemfile', <<-FILE
source 'http://rubygems.org'
source 'http://gems.github.com'

gem 'rails'
gem 'sqlite3-ruby', :require => 'sqlite3'

group :development do
  gem 'nifty-generators'
  gem 'wirble'
  gem 'yaml_db'
  gem 'ruby-debug'

end

FILE

  gem 'rdiscount'
  gem 'gravatar_image_tag'
  gem 'linguistics'
  gem 'chronic18n'
  gem 'formtastic'
  run 'rails generate formtastic:install'
  gem "friendly_id", "~> 3.1"
  run 'rails generate friendly_id'
  gem 'nokogiri', '>=1.4.1'
  gem 'rails3-generators'

