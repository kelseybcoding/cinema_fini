class CreateShowings < ActiveRecord::Migration[5.0]
  def change
    create_table :showings do |t|
      t.integer :movie_id
      t.integer :screen_id
      t.integer :seats_sold
      t.string  :start_time

      t.timestamps
    end
  end
end
