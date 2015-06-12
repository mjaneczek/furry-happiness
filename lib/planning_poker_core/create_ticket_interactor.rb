class CreateTicketInteractor
  def initialize(name, gateway)
    @name = name
    @gateway = gateway
  end

  def create
    @gateway.create_ticket @name
  end
end