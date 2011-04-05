Given /^the following deals:$/ do |deals|
  Deals.create!(deals.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) deals$/ do |pos|
  visit deals_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following deals:$/ do |expected_deals_table|
  expected_deals_table.diff!(tableish('table tr', 'td,th'))
end
