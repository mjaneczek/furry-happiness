module AgileBoardCore
  class MoveTicketInteractor
    def initialize(id, new_column_name, gateway)
      @id = id
      @new_column_name = new_column_name
      @gateway = gateway
    end

    def move
      @gateway.edit_ticket @id, column: @new_column_name
    end
  end
end