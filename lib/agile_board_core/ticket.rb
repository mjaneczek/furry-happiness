module AgileBoardCore
  class Ticket
    attr_accessor :id, :name, :estimation, :column

    def initialize(id, name, estimation = nil, column = 'Backlog')
      @id = id
      @name = name
      @estimation = estimation
      @column = column
    end
  end
end