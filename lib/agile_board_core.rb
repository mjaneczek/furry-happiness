require 'agile_board_core/version'
require 'agile_board_core/get_tickets_interactor'
require 'agile_board_core/create_ticket_interactor'
require 'agile_board_core/estimate_ticket_interactor'
require 'agile_board_core/move_ticket_interactor'
require 'agile_board_core/mock_ticket_gateway'
require 'agile_board_core/ticket'

module AgileBoardCore
  def self.gateway
    @@gateway ||= MockTicketGateway.new
  end

  def self.gateway=(gateway)
    @@gateway = gateway
  end
end

