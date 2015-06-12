class MockTicketGateway
  def create_ticket(name)
    Ticket.new name
  end
end