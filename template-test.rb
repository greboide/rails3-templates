require 'highline/import'
path = __FILE__.gsub(/(\w*-\w*).rb$/,"")

apply "#{path}/template-rspec.rb"
apply "#{path}/template-cucumber.rb"


