Given /^I have a (twitter|facebook) account$/ do |social_network|
  @provider = social_network
end

When /^I choose my social network as login$/ do
  visit '/login'
  first(".#@provider").click
end

Then /^I get to see my name$/ do
  page.should have_content('Ralph')
end

Then /^I am authenticated$/ do
  page.should have_selector('.authenticated')
end

Then /^I am no longer authenticated$/ do
  page.should_not have_selector('.authenticated')
end

Given /^I am authenticated with that account$/ do
  step %Q{I choose my social network as login}
end

When /^I click logout$/ do
  first('.logout').click
end
