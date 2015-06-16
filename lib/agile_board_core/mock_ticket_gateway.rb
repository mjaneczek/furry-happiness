module AgileBoardCore
  class MockTicketGateway
    def initialize
      @tickets = []
    end

    def get_tickets
      @tickets
    end

    def create_ticket(name)
      Ticket.new(1, name).tap do |ticket|
        @tickets << ticket
      end
    end

    def estimate_ticket(ticket_id, estimation)
      Ticket.new ticket_id, 'name', estimation
    end
  end
end