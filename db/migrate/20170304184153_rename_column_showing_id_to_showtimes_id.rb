class RenameColumnShowingIdToShowtimesId < ActiveRecord::Migration[5.0]
  def change
    rename_column :ticket_orders, :showing_id, :showtimes_id
  end
end
