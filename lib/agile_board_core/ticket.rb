module AgileBoardCore
  class Ticket
    attr_accessor :id, :name, :estimation

    def initialize(id, name, estimation = nil)
      @id = id
      @name = name
      @estimation = estimation
    end
  end
end