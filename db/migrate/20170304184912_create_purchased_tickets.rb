class CreatePurchasedTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :purchased_tickets do |t|
      t.string :ticket_order_id
      t.decimal  "purchase_price",       precision: 8, scale: 2

      t.timestamps
    end
  end
end