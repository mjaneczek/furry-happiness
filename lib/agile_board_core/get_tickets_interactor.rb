module AgileBoardCore
  class GetTicketsInteractor
    def get_tickets
      AgileBoardCore.gateway.get_tickets
    end
  end
end