class DropTablePurchasedTickets < ActiveRecord::Migration[5.0]
  def change
    drop_table :purchased_tickets
  end
end
