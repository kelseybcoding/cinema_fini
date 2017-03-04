class RemoveColumnSeatsSold < ActiveRecord::Migration[5.0]
  def change
    remove_column :showtimes, :seats_sold, :integer
  end
end
