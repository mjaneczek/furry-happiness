describe CreateTicketInteractor do
  subject { described_class.new ticket_name, MockTicketGateway.new }
  let(:ticket_name) { 'Write tests' }

  it 'returns a ticket with "Write tests" name' do
    expect(subject.call).to eq(name: ticket_name)
  end
end