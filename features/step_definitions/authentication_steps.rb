Given /^I have a (twitter|facebook) account$/ do |social_network|
  @provider = social_network
end

When /^I choose my social network as login$/ do
  authenticate_network @provider
end

Then /^I get to see my name$/ do
  within '.user-name' do
    should have_content('Ralph')
  end
end

Then /^I am authenticated$/ do
  visit '/'
  should have_selector('.authenticated')
end

Then /^I am no longer authenticated$/ do
  visit '/'
  should_not have_selector('.authenticated')
end

Given /^I am authenticated with that account$/ do
  authenticate_network @provider
end

When /^I click logout$/ do
  first('.logout').click
end
