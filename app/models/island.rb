class Island < ApplicationRecord
  has_one_attached :photo

  has_many :reviews
  has_many :reservations
end
