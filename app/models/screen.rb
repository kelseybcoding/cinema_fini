class Screen < ApplicationRecord
  belongs_to :movie
  has_many :showtimes

  validates :name, :seat_count, presence: true
  validates :name, uniqueness: true
end
