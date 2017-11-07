class GalleryImage < ApplicationRecord
  has_attached_file :image, styles: { medium: "600x600>", thumb: "100x100>" }, default_url: "/assets/placeholder.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :gallery, dependent: :destroy
end
