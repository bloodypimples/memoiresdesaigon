class Article < ApplicationRecord
  has_attached_file :image, styles: { hero: "1300x1300>", medium: "600x600>", thumb: "100x100>" }, default_url: "/assets/placeholder.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :body, presence: true
  has_many :comments
end
