class TicketOrdersController < ApplicationController
  
  def new
    @ticket_order = TicketOrder.new
  end

  def create
    
  end

  # def random_date
  #   rand(2.days).from_now
  # end

private

  def ticket_order_params
    params.require(:ticket_order).permit(:first_name, :last_name, :email, :cc_number, :expiry, :total_charged)
  end

end

 