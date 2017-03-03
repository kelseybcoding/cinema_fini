class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :showing_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :cc_number
      t.string :expiry

      t.timestamps
    end
  end
end
