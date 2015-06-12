class MockTicketGateway
  def create_ticket(name)
    { name: name }
  end
end