class Gallery < ApplicationRecord
  has_many :gallery_images
  belongs_to :room, dependent: :destroy
end
