
When /^I visit the trophies page$/ do
  visit '/trophies'
end

Then /^I see a list of trophies$/ do
  should have_selector '.trophy', count: 4
end

Then /^I see which politicians have earned them$/ do
  first('.trophy').should have_selector '.winners'
end

Given /Voted more than (\d+) times$/ do |amount|
  @politician = FactoryGirl.create :politician
  amount = amount.to_i + 1
  amount.times do
    FactoryGirl.create :vote, :SID_ActorLid => @politician.parlis_id
  end
end

Then /^I see a trophy listing "(.*?)"$/ do |achievement|
  @achievement = achievement
  first('.trophies').should have_content(achievement)
end

Then /^I see that the politician earned it$/ do
  all('.trophy').each do |e|
    if e.has_content? @achievement
      e.first('.winners i')['title'].should eql @politician.name
    end
  end
end

Given /Accepted more than (\d+) times$/ do |amount|
  @politician ||= FactoryGirl.create :politician
  amount = amount.to_i + 1
  amount.times do
    FactoryGirl.create :vote, :SID_ActorLid => @politician.parlis_id, :Soort => 'Voor'
  end
end

Given /Declined more than (\d+) times$/ do |amount|
  @politician ||= FactoryGirl.create :politician
  amount = amount.to_i + 1
  amount.times do
    FactoryGirl.create :vote, :SID_ActorLid => @politician.parlis_id, :Soort => 'Tegen'
  end
end

Given /has been in more than (\d+) party$/ do |amount|
  @politician ||= FactoryGirl.create :politician
  amount = amount.to_i + 1
  amount.times do
    party = FactoryGirl.create :political_party
    @politician.parties << party
  end
end

