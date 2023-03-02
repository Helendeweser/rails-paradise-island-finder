class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :island

  validates :user_id, :island_id, :start_date, :end_date, presence: true
end
