
FactoryGirl.define do
  factory :vote do |t|
    t.sequence(:id) { |i| i }
    t.Soort { %w(Voor Tegen).sample }
    t.ActorNaam 'actor naam'
    t.ActorPartij 'actor partij'
    t.SID_ActorFractie 'actorfractie'
    t.SID_ActorLid 'actorlid'
    t.SID_Besluit 'becxgjnsltju'
  end
end
