
module VoteTrophies

  def voted_gold
    self.joins(:votes).
      group(self.parlis_key).
      having("count(Stemmingen.id) > #{self::VOTED_GOLD}")
  end

  def voted_positive_gold
    self.joins(:votes).
      where('Stemmingen.Soort = ?', "Voor").
      group(self.parlis_key).
      having("count(Stemmingen.id) > #{self::VOTED_POSITIVE_GOLD}")
  end

  def voted_negative_gold
    self.joins(:votes).
      where('Stemmingen.Soort = ?', "Tegen").
      group(:SID_ActorLid).
      having("count(Stemmingen.id) > #{self::VOTED_NEGATIVE_GOLD}")
  end
end
