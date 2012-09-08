class Politician < ActiveRecord::Base
  attr_accessible :name
  has_many :parties, through: :politician_parties
  has_many :politician_parties
  has_many :votes, primary_key: :parlis_id, foreign_key: :SID_ActorLid

  VOTED_GOLD = 60
  VOTED_POSITIVE_GOLD = 30
  VOTED_NEGATIVE_GOLD = 30

  def self.voted_gold
    self.joins(:votes).
      group(:SID_ActorLid).
      having("count(Stemmingen.id) > #{VOTED_GOLD}")
  end

  def self.voted_positive_gold
    self.joins(:votes).
      where('Stemmingen.Soort = ?', "Voor").
      group(:SID_ActorLid).
      having("count(Stemmingen.id) > #{VOTED_POSITIVE_GOLD}")
  end

  def self.voted_negative_gold
    self.joins(:votes).
      where('Stemmingen.Soort = ?', "Tegen").
      group(:SID_ActorLid).
      having("count(Stemmingen.id) > #{VOTED_NEGATIVE_GOLD}")
  end


end
