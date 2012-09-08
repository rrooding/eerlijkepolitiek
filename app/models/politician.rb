class Politician < ActiveRecord::Base
  attr_accessible :name
  has_many :parties, through: :politician_parties
  has_many :politician_parties

end
