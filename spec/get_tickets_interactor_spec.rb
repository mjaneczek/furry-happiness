module AgileBoardCore
  describe GetTicketsInteractor do
    subject { described_class.new }
    let!(:existing_ticket) { AgileBoardCore.gateway.create_ticket 'existing_ticket' }

    it 'returns a ticket with "Write tests" name' do
      tickets = subject.get_tickets
      expect(tickets).to eq([existing_ticket])
    end
  end
end