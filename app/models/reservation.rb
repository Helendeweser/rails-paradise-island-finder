class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :island

  validates :user_id, :island_id, :start_date, :end_date, presence: true
  validates :end_date, comparison: { greater_than: :start_date }
  # validates :start_date, uniqueness: { scope: :end_date }
end
