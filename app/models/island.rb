class Island < ApplicationRecord
  has_one_attached :photo

  belongs_to :user

  has_many :reviews
  has_many :reservations

  validates :name, :description, :size, :price, :user_id, :address, :photo, presence: true
  validates :size, :price, numericality: true
  validates :name, uniqueness: true
  validates :description, length: { minimum: 20 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
