class CreateScreens < ActiveRecord::Migration[5.0]
  def change
    create_table :screens do |t|
      t.string :name
      t.integer :seat_count

      t.timestamps
    end
  end
end
