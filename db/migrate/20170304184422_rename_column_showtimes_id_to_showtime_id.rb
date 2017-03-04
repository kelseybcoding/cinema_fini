class RenameColumnShowtimesIdToShowtimeId < ActiveRecord::Migration[5.0]
  def change
    rename_column :ticket_orders, :showtimes_id, :showtime_id
  end
end
