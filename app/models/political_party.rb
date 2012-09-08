class PoliticalParty < ActiveRecord::Base
  extend VoteTrophies

  attr_accessible :name
  cattr_reader :parlis_key
  has_many :votes, primary_key: :parlis_id, foreign_key: :SID_ActorFractie

  VOTED_GOLD = 160
  VOTED_POSITIVE_GOLD = 140
  VOTED_NEGATIVE_GOLD = 140

  @@parlis_key = :SID_ActorFractie

end
