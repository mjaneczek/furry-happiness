module AgileBoardCore
  class CreateTicketInteractor
    def initialize(name)
      @name = name
    end

    def create
      AgileBoardCore.gateway.create_ticket @name
    end
  end
end