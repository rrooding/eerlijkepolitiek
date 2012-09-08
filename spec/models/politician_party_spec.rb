require 'spec_helper'

describe PoliticianParty do
  it { should belong_to :party }
  it { should belong_to :politician }
end
