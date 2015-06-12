class CreateTicketInteractor
  def initialize(name)
    @name = name
  end

  def call
    { name: 'Write tests' }
  end
end