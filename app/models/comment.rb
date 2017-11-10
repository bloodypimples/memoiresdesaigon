class Comment < ApplicationRecord
  belongs_to :article
  validates :user_email, presence: true
  validates :user_name, presence: true
  validates :body, presence: true
end
