
Given /^I have a (facebook) account$/ do |social_network|
  @provider = social_network
end

When /^I choose my social network as login$/ do
  visit '/login'
  first(".#@provider").click
end

Then /^I get to see my name$/ do
  pending
end

Then /^I am authenticated$/ do
  pending
end

