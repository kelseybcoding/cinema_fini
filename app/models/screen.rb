class Screen < ApplicationRecord
  has_many :showtimes
  has_many :movies, through: :showtimes

  validates :name, :seat_count, presence: true
  validates :name, uniqueness: true
end
