require 'spec_helper'

describe PoliticalParty do
  it { should have_many :votes }
end
