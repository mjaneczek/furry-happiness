module AgileBoardCore
  describe MoveTicketInteractor do
    subject { described_class.new existing_ticket.id, 'In dev' }
    let!(:existing_ticket) { AgileBoardCore.gateway.create_ticket 'existing_ticket' }

    it 'works' do
      expect(subject.move.column).to eq('In dev')
    end
  end
end