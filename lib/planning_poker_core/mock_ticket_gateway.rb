class MockTicketGateway
  def create_ticket(name)
    Ticket.new 1, name
  end

  def estimate_ticket(ticket_id, estimation)
    Ticket.new ticket_id, 'name', estimation
  end
end