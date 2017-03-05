class Movie < ApplicationRecord
  has_many :showtimes
  has_many :ticket_orders, through: :showtimes

  validates :title, :rating, :summary, :run_time, :image_url, presence: true #checks that these fields aren't empty
  validates :title, uniqueness: true #checks that the title is unique among all movies
  validates :image_url, allow_blank: true, format: {  #makes sure image URL looks reasonable.
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be URL for GIF, JPG, or PNG image.' 
  }
end

