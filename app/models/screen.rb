class Screen < ApplicationRecord
  has_many :showtimes
  belongs_to :movie
  # has_many :movies, through: :showtimes

  validates :name, :seat_count, presence: true
  validates :name, uniqueness: true
end
