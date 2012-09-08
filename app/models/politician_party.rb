class PoliticianParty < ActiveRecord::Base
  belongs_to :politician
  # attr_accessible :title, :body
end
