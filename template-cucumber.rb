# -*- coding: utf-8 -*-
run 'gem install capybara database_cleaner cucumber cucumber-rails rspec-rails spork launchy'

gem 'capybara', :group => :test
gem 'database_cleaner', :group => :test
gem 'cucumber', :group => :test
gem 'cucumber-rails', :group => :test
gem 'spork', :group => :test
gem 'launchy', :group => :test

run 'rails generate cucumber:install --rspec --capybara'

file("features/step_definitions/webrat_pt.rb") do
%q{
  # encoding: utf-8

  require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

  Dado /^que eu estou em (.+)$/ do |page_name|
    Given %{I am on #{page_name}}
  end
  Dado /^que eu estou na (.+)$/ do |page_name|
    Given %{I am on #{page_name}}
  end

  Quando /^eu vou para (.+)$/ do |page_name|
    When %{I go to #{page_name}}
  end

  Quando /^eu aperto "([^\"]*)"$/ do |button|
    When %{I press "#{button}"}
  end

  Quando /^eu clicar "([^\"]*)"$/ do |link|
    When %{I follow "#{link}"}
  end

  Quando /^eu clicar em "([^\"]*)"$/ do |link|
    When %{I follow "#{link}"}
  end

  Quando /^eu clico em "([^\"]*)"$/ do |link|
    save_and_open_page
    When %{I follow "#{link}"}
  end

  Quando /^eu clicar "([^\"]*)" dentro de "([^\"]*)"$/ do |link, parent|
    When %{I follow "#{link}" within "#{parent}"}
  end

  Quando /^eu preencho "([^\"]*)" com "([^\"]*)"$/ do |field, value|
    When %{I fill in "#{field}" with "#{value}"}
  end
  Quando /^eu preencher "([^\"]*)" com "([^\"]*)"$/ do |field, value|
    When %{I fill in "#{field}" with "#{value}"}
  end

  Quando /^eu preencho "([^\"]*)" para "([^\"]*)"$/ do |value, field|
    When %{I fill in "#{value}" for "#{field}"}
  end

  Quando /^eu preencho o seguinte:$/ do |fields|
    When %{I fill in the following:}, fields
  end

  Quando /^eu seleciono "([^\"]*)" de "([^\"]*)"$/ do |value, field|
    When %{I select "#{value}" from "#{field}"}
  end

  Quando /^eu seleciono "([^\"]*)" como a data e a hora$/ do |time|
    When %{I select "#{time}" as the date and time}
  end

  Quando /^eu seleciono "([^\"]*)" como a data e a hora "([^\"]*)"$/ do |datetime, datetime_label|
    When %{I select "#{datetime}" as the "#{datetime_label}" date and time}
  end

  Quando /^eu seleciono "([^\"]*)" como a hora$/ do |time|
    When %{I select "#{time}" as the time}
  end

  Quando /^eu seleciono "([^\"]*)" como a hora "([^\"]*)"$/ do |time, time_label|
    When %{I select "#{time}" as the "#{time_label}" time}
  end

  Quando /^eu seleciono "([^\"]*)" como a data$/ do |date|
    When %{I select "#{date}" as the date}
  end

  Quando /^eu seleciono "([^\"]*)" como a data "([^\"]*)"$/ do |date, date_label|
    When %{I select "#{date}" as the "#{date_label}" date}
  end

  Quando /^eu seleciono "([^\"]*)" como "([^\"]*)"$/ do |date, date_label|
    When %{I select "#{date}" as the "#{date_label}" date}
  end

  Quando /^eu marco "([^\"]*)"$/ do |field|
    When %{I check "#{field}"}
  end

  Quando /^eu desmarco "([^\"]*)"$/ do |field|
    When %{I uncheck "#{field}"}
  end

  Quando /^eu escolho "([^\"]*)"$/ do |field|
    When %{I choose "#{field}"}
  end

  Quando /^eu anexo o arquivo em "([^\"]*)" a "([^\"]*)"$/ do |path, field|
    When %{I attach the file "#{path}" to "#{field}"}
  end

  Então /^eu devo ver "([^\"]*)"$/ do |text|
    Then %{I should see "#{text}"}
  end

  Então /^eu devo ver "([^\"]*)" dentro de "([^\"]*)"$/ do |text, selector|
    Then %{I should see "#{text}" within "#{selector}"}
  end

  Então /^eu devo ver \/([^\/]*)\/$/ do |regexp|
    Then %{I should see /#{regexp}/}
  end

  Então /^eu devo ver \/([^\/]*)\/ dentro de "([^\"]*)"$/ do |regexp, selector|
    Then %{I should see /#{regexp}/ within "#{selector}"}
  end

  Então /^eu não devo ver "([^\"]*)"$/ do |text|
    Then %{I should not see "#{text}"}
  end

  Então /^eu não devo ver "([^\"]*)" dentro de "([^\"]*)"$/ do |text, selector|
    Then %{I should not see "#{text}" within "#{selector}"}
  end

  Então /^eu não devo ver \/([^\/]*)\/$/ do |regexp|
    Then %{I should not see /#{regexp}/}
  end

  Então /^eu não devo ver \/([^\/]*)\/ dentro de "([^\"]*)"$/ do |regexp, selector|
    Then %{I should not see /#{regexp}/ within "#{selector}"}
  end

  Então /^o campo "([^\"]*)" deve conter "([^\"]*)"$/ do |field, value|
    Then %{the "#{field}" field should contain "#{value}"}
  end

  Então /^o campo "([^\"]*)" não deve conter "([^\"]*)"$/ do |field, value|
    Then %{the "#{field}" field should not contain "#{value}"}
  end

  Então /^o checkbox "([^\"]*)" deve estar marcado$/ do |label|
    Then %{the "#{label}" checkbox should be checked}
  end

  Então /^o checkbox "([^\"]*)" não deve estar marcado$/ do |label|
    Then %{the "#{label}" checkbox should not be checked}
  end

  Então /^eu devo estar na (.+)$/ do |page_name|
    Then %{I should be on #{page_name}}
  end

  Então /^eu devo estar em (.+)$/ do |page_name|
    Then %{I should be on #{page_name}}
  end


  Então /^mostre-me a página$/ do
    Then %{show me the page}
  end

}
end

