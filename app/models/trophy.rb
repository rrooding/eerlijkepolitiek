class Trophy
  TROPHIES = {
    voted_gold: {
      personal_description: I18n.t(:description, scope: 'voted_gold', amount: Politician::VOTED_GOLD),
      party_description: I18n.t(:description, scope: 'voted_gold', amount: PoliticalParty::VOTED_GOLD)
    },
    voted_positive_gold: {
      personal_description: I18n.t(:description, scope: 'voted_positive_gold', amount: Politician::VOTED_POSITIVE_GOLD),
      party_description: I18n.t(:description, scope: 'voted_positive_gold', amount: PoliticalParty::VOTED_POSITIVE_GOLD)
    },
    voted_negative_gold: {
      personal_description: I18n.t(:description, scope: 'voted_negative_gold', amount: Politician::VOTED_NEGATIVE_GOLD), 
      party_description: I18n.t(:description, scope: 'voted_negative_gold', amount: PoliticalParty::VOTED_NEGATIVE_GOLD)
    },
    game_changer: {
      personal_description: I18n.t(:description, scope: 'game_changer', amount: 1),
    }
  }
  attr_accessor :key, :personal_description, :party_description, :title

  def initialize key
    self.key = key
    self.personal_description = TROPHIES[key][:personal_description]
    self.party_description = TROPHIES[key][:party_description]
    self.title = I18n.t :title, scope: key
  end

  def self.all
    @trophies ||= TROPHIES.map do |k, v|
      Trophy.new k
    end
  end

  def partial_path obj
    'trophy'
  end

  def winners
    Politician.send self.key
  end

  def party_winners
    PoliticalParty.send self.key
  end
end
