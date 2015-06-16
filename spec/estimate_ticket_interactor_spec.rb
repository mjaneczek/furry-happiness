module AgileBoardCore
  describe EstimateTicketInteractor do
    let!(:existing_ticket) { AgileBoardCore.gateway.create_ticket 'tikcet_name' }

    it 'returns a ticket with updated estimation value' do
      estimated_ticket = described_class.new(existing_ticket.id, 5).estimate
      expect(estimated_ticket.estimation).to eq(5)
    end
  end
end
