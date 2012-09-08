
describe Trophy do

  context 'voted X times' do
    let(:trophy) { Trophy.new :voted_gold }

    describe '#winners' do

      it 'checks politicians for gold amount of votes' do
        Politician.should_receive :voted_gold
        trophy.winners
      end
    end
  end

  context 'voted X times positive' do
    let(:trophy) { Trophy.new :voted_positive_gold }

    describe '#winners' do

      it 'checks politicians for gold amount of positive votes' do
        Politician.should_receive :voted_positive_gold
        trophy.winners
      end
    end
  end

  context 'voted X times negative' do
    let(:trophy) { Trophy.new :voted_negative_gold }

    describe '#winners' do

      it 'checks politicians for gold amount of negative votes' do
        Politician.should_receive :voted_negative_gold
        trophy.winners
      end
    end
  end
end
