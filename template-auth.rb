require 'highline/import'
require 'rails'

devise_model = "User"

gem 'cancan'
gem 'devise', :git => "git://github.com/plataformatec/devise.git"
gem 'warden'
run 'pwd'
run 'bundle install'
run 'rails generate devise:install'
run 'rails generate devise:views'
run "rails generate devise:#{devise_model}"
