Given /^I am currently on the "([^"]*)" page$/ do |page|
  visit deals_path
end



Then /^sleep for (\d+) seconds$/ do |time|
 sleep(time.to_i)
end

