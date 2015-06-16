module AgileBoardCore
  describe CreateTicketInteractor do
    subject { described_class.new ticket_name, MockTicketGateway.new }
    let(:ticket_name) { 'Write tests' }

    it 'returns a ticket with "Write tests" name' do
      ticket = subject.create
      expect(ticket.name).to eq(ticket_name)
    end
  end
end