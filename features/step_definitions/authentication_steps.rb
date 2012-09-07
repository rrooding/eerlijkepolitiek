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

