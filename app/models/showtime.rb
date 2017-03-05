class Showtime < ApplicationRecord
  belongs_to :movie
  belongs_to :screen

  validates :movie_id, :screen_id, :start_time, presence: true
  validates :screen_id, uniqueness: { scope: :start_time }
end

