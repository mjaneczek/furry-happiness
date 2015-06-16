module AgileBoardCore
  describe MoveTicketInteractor do
    subject { described_class.new 1, 'In dev', MockTicketGateway.new }

    it 'works' do
      expect(subject.move.column).to eq('In dev')
    end
  end
end