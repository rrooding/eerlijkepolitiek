
When /^I visit the trophies page$/ do
  visit '/trophies'
end

Then /^I see a list of trophies$/ do
  should have_selector '.trophy', count: 4
end

Then /^I see which politicians have earned them$/ do
  first('.trophy').should have_selector '.winners'
end

Then /^I see a trophy listing "(.*?)"$/ do |achievement|
  @achievement = achievement
  first('.trophies').should have_content(achievement)
end

Then /^I see that the (politician|party) earned it$/ do |entity|
  all('.trophy').each do |e|
    if e.has_content? @achievement
      e.should have_selector '.winners i'
      if entity == 'politician'
        e.first('.winners i')['title'].should eql @politician.name
      else
        e.first('.winners i')['title'].should eql @party.name
      end
    end
  end
end

Given /^a (politician|party) (?:.*) voted more than (\d+) times$/ do |entity, amount|
  if entity == 'politician'
    @politician = FactoryGirl.create :politician
    amount = amount.to_i + 1
    amount.times do
      FactoryGirl.create :vote, :SID_ActorLid => @politician.parlis_id
    end
  else
    @party = FactoryGirl.create :political_party
    amount = amount.to_i + 1
    amount.times do
      FactoryGirl.create :vote, :SID_ActorFractie => @party.parlis_id
    end
  end
end

Given /^a (politician|party) (?:.*) accepted more than (\d+) times$/ do |entity, amount|
  if entity == 'politician'
    @politician ||= FactoryGirl.create :politician
    amount = amount.to_i + 1
    amount.times do
      FactoryGirl.create :vote, :SID_ActorLid => @politician.parlis_id, :Soort => 'Voor'
    end
  else
    @party ||= FactoryGirl.create :political_party
    amount = amount.to_i + 1
    amount.times do
      FactoryGirl.create :vote, :SID_ActorFractie => @party.parlis_id, :Soort => 'Voor'
    end
  end
end

Given /^a (politician|party) (?:.*) declined more than (\d+) times$/ do |entity, amount|
  if entity == 'politician'
    @politician ||= FactoryGirl.create :politician
    amount = amount.to_i + 1
    amount.times do
      FactoryGirl.create :vote, :SID_ActorLid => @politician.parlis_id, :Soort => 'Tegen'
    end
  else
    @party ||= FactoryGirl.create :political_party
    amount = amount.to_i + 1
    amount.times do
      FactoryGirl.create :vote, :SID_ActorFractie => @party.parlis_id, :Soort => 'Tegen'
    end
  end
end

Given /have been in more than (\d+) parties$/ do |amount|
  @politician ||= FactoryGirl.create :politician
  amount = amount.to_i + 1
  amount.times do
    party = FactoryGirl.create :political_party
    @politician.parties << party
  end
end

