class Politician < ActiveRecord::Base
  extend VoteTrophies

  attr_accessible :name
  cattr_reader :parlis_key
  has_many :parties, through: :politician_parties
  has_many :politician_parties
  has_many :votes, primary_key: :parlis_id, foreign_key: :SID_ActorLid

  VOTED_GOLD = 60
  VOTED_POSITIVE_GOLD = 40
  VOTED_NEGATIVE_GOLD = 40
  @@parlis_key = :SID_ActorLid



  def self.game_changer
    self.joins(:parties).
      group('politician_parties.politician_id').
      having("count(party_id) > 1")
  end


end
