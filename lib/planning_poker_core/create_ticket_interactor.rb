class CreateTicketInteractor
  def initialize(name, gateway)
    @name = name
    @gateway = gateway
  end

  def call
    @gateway.create_ticket @name
  end
end