class Screen < ApplicationRecord
  has_many :showings
  has_many :movies, through: :showings

  validates :name, :seat_count, presence: true
  validates :name, uniqueness: true
end
