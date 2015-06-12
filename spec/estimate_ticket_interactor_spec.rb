describe EstimateTicketInteractor do
  let(:ticket) { Ticket.new 1, 'tikcet_name' }

  it 'returns a ticket with updated estimation value' do
    estimated_ticket = EstimateTicketInteractor.new(1, 5, MockTicketGateway.new).estimate
    expect(estimated_ticket.estimation).to eq(5)
  end
end