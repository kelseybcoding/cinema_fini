class Screen < ApplicationRecord
  has_many :showtimes
  belongs_to :movie

  validates :name, :seat_count, presence: true
  validates :name, uniqueness: true
end
