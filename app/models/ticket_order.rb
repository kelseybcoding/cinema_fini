class TicketOrder < ApplicationRecord
  belongs_to :showtime
  has_one :movie

  validates :showtime_id, :first_name, :last_name, :email, :cc_number, :expiry, presence: true
  
end
