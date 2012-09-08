class Trophy
  TROPHIES = {
    voted_gold: I18n.t(:description, scope: 'voted_gold', amount: Politician::VOTED_GOLD),
    voted_positive_gold: I18n.t(:description, scope: 'voted_positive_gold', amount: Politician::VOTED_POSITIVE_GOLD),
    voted_negative_gold: I18n.t(:description, scope: 'voted_negative_gold', amount: Politician::VOTED_NEGATIVE_GOLD),
    game_changer: I18n.t(:description, scope: 'game_changer', amount: 1)
  }
  attr_accessor :key, :description, :title

  def initialize key
    self.key = key
    self.description = TROPHIES[key]
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
end
