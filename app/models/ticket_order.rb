class TicketOrder < ApplicationRecord
  belongs_to :showtime

  validates :showtime_id, :first_name, :last_name, :email, :cc_number, :expiry, :total_charged, presence: true
  # validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates :cc_number, length: { maximum: 19 }
  
end
