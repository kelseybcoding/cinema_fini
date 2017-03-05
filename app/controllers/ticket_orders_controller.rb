class TicketOrdersController < ApplicationController
  
  def new
    @ticket_order = TicketOrder.new
    @showtime = Showtime.find(params[:showtime_id])
  end

  def create
    @ticket_order = TicketOrder.new(ticket_order_params)
    @showtime = Showtime.find_by(id: params[:id])
    # @ticket_order.showtime_id = @showtime.id
    
    if @ticket_order.save
  
      flash[:notice] = "Your ticket to #{@showtime.movie.title} was purchased.  Please look for an email with your receipt. "
      redirect_to root_path
    else
      @errors = @ticket_order.errors.full_messages
      
      render 'ticket_orders/new', locals: { ticket_order: @ticket_order }
    end
  end

  private

  def ticket_order_params
    params.require(:ticket_order).permit(:first_name, :last_name, :email, :cc_number, :expiry, :total_charged) 
  end

end