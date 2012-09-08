class Politician < ActiveRecord::Base
  attr_accessible :name
  has_many :parties, through: :politician_parties
  has_many :politician_parties
  has_many :votes, primary_key: :parlis_id, foreign_key: :SID_ActorLid

  def self.voted_gold
    self.joins(:votes).
      group(:SID_ActorLid).
      having('count(Stemmingen.id) > 60')
  end


end
