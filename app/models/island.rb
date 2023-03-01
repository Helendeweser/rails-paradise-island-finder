class Island < ApplicationRecord
  has_one_attached :photo

  belongs_to :user

  has_many :reviews
  has_many :reservations

  validates :name, :description, :size, :price, :user_id, presence: true
end
