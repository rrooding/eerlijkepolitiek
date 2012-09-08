class PoliticianParty < ActiveRecord::Base
  belongs_to :politician
  belongs_to :party, class_name: 'PoliticalParty'
end
