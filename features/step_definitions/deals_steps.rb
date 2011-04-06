Given /^I am currently on the "([^"]*)" page$/ do |page|
  visit page_path
end



Then /^sleep for (\d+) seconds$/ do |time|
 sleep(time.to_i)
end

