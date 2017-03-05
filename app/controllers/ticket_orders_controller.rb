class TicketOrdersController < ApplicationController
  
  def index
    
  end

  def new
    @ticket_order = TicketOrder.new
    @showtime = Showtime.find(
      showtime_id: params[:showtime_id]
      )
  end

  def create
    @ticket_order = TicketOrder.create(
      showtime_id: params[:showtime_id],
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      cc_number: params[:cc_number],
      expiry: params[:expiry]
      # total_charged: params[:total_charged]
      )
    flash[:notice] = "Ticket purchased! You will receive an email receipt shortly!"
  end

  # def random_date
  #   rand(2.days).from_now
  # end

# private

#   def ticket_order_params
#     params.require(:first_name, :last_name, :email, :cc_number, :expiry)
#   end

end



