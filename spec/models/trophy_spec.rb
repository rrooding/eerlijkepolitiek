
describe Trophy do

  context 'voted 100 times' do
    let(:trophy) { Trophy.new :voted100 }

    describe '#winners' do

      it 'checks politicians for 100 votes' do
        Politician.should_receive :voted100
        trophy.winners
      end
    end
  end
end
