class RenameTableTicketsToTicketOrders < ActiveRecord::Migration[5.0]
  def change
    rename_table :tickets, :ticket_orders
  end
end
