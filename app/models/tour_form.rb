class TourForm < ApplicationRecord
  belongs_to :tour, optional: true
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
