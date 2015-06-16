class EstimateTicketInteractor
  def initialize(id, estimation, gateway)
    @ticket_id = id
    @estimation = estimation
    @gateway = gateway
  end

  def estimate
    @gateway.estimate_ticket(@ticket_id, @estimation)
  end
end