class Gallery < ApplicationRecord
  has_many :gallery_images, dependent: :destroy
  belongs_to :room, optional: true
  belongs_to :tour, optional: true
end
