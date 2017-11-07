class Gallery < ApplicationRecord
  has_many :gallery_images, dependent: :destroy
  belongs_to :room
end
