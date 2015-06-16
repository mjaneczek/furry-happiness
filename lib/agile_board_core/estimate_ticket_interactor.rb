module AgileBoardCore
  class EstimateTicketInteractor
    def initialize(id, estimation)
      @ticket_id = id
      @estimation = estimation
    end

    def estimate
      AgileBoardCore.gateway.edit_ticket(@ticket_id, estimation: @estimation)
    end
  end
end