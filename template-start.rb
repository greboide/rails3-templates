#----------------------------------------------------------------------------
# Template Roadmap
#----------------------------------------------------------------------------
path = __FILE__.gsub(/(\w*-\w*).rb$/,"")

require 'rails'

apply "#{path}/template-javascript.rb"
apply "#{path}/template-auth.rb"
apply "#{path}/template-gems.rb"
apply "#{path}/template-smtp.rb"
apply "#{path}/template-cucumber.rb"
apply "#{path}/template-fixjour.rb"
apply "#{path}/template-test.rb"
apply "#{path}/template-finish.rb"
