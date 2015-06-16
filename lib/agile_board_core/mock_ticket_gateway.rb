module AgileBoardCore
  class MockTicketGateway
    def initialize
      clear!
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
      @tickets.detect {|t| t.id == ticket_id}.tap {|t| t.estimation = hash_attributes[:estimation]; t.column = hash_attributes[:column] }
    end

    def clear!
      @tickets = []
    end
  end
end