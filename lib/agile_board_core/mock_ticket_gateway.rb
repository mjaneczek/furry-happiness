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

    def edit_ticket(ticket_id, hash_attributes)
      Ticket.new ticket_id, 'name', hash_attributes[:estimation], hash_attributes[:column]
    end
  end
end