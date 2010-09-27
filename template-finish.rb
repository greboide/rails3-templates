require 'highline/import'

run 'bundle install'
run 'rake db:migrate'

apply "http://github.com/greboide/rails3-templates/raw/master/template-git.rb"

puts 'Success! Enjoy your shiny new app!'
