class Trophy
  TROPHIES = {
    voted_gold: 'Voted more than 60 times'
  }
  attr_accessor :key, :name

  def initialize key
    self.key = key
    self.name = TROPHIES[key]
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
    Politician.voted_gold
  end
end
