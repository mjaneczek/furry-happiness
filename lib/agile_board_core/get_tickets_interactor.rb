module AgileBoardCore
  class GetTicketsInteractor
    def initialize(gateway)
      @gateway = gateway
    end

    def get_tickets
      @gateway.get_tickets
    end
  end
end