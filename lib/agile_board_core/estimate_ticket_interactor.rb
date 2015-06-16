module AgileBoardCore
  class EstimateTicketInteractor
    def initialize(id, estimation, gateway)
      @ticket_id = id
      @estimation = estimation
      @gateway = gateway
    end

    def estimate
      @gateway.edit_ticket(@ticket_id, estimation: @estimation)
    end
  end
end