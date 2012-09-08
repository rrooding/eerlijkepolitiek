require 'spec_helper'

describe Politician do
  it { should have_many :parties }
  it { should have_many :politician_parties }

end
