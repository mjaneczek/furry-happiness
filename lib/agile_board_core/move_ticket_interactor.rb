module AgileBoardCore
  class MoveTicketInteractor
    def initialize(id, new_column_name)
      @id = id
      @new_column_name = new_column_name
    end

    def move
      AgileBoardCore.gateway.edit_ticket @id, column: @new_column_name
    end
  end
end