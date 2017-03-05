class Showtime < ApplicationRecord
  belongs_to :movie
  belongs_to :screen
  has_many :ticket_orders

  validates :movie_id, :screen_id, :start_time, :ticket_price, presence: true
end

