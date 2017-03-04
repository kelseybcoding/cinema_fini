class Movie < ApplicationRecord
  has_many :showings
  has_many :ticket_sales, through: :showings, :source => :tickets
end