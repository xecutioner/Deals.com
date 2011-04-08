Given /^I am currently on the "([^"]*)" page$/ do |page|
  visit deals_path
end

Then /^sleep for (\d+) seconds$/ do |time|
 sleep(time.to_i)
end

Given /^I am authenticated$/ do
    visit new_person_session_path
  Person.create!(:email => "kapil@a.com", :password => "qwerty",:fullname => "prasid", :username => "joshi" , :phonenumber => "565656")
  fill_in "Email", :with => "kapil@a.com"
  fill_in "Password", :with => "qwerty"

  click_button "Sign in"
end
Given /^I select "([^"]*)" as "([^"]*)"$/ do |selector, value|
    select(value.to_s, :from => "#{selector}")
end

Given /^I visit a deal page$/ do
  deal = Deal.make!(:person_id => 1, :title => "New Product Deal")
  visit deal_path(deal)
end
