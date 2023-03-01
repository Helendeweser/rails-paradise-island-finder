class Island < ApplicationRecord
  has_one_attached :photo

  belongs_to :user

  has_many :reviews
  has_many :reservations


  validates :name, :description, :size, :price, :user_id, :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
