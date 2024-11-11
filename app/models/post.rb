class Post < ApplicationRecord
  validates :content, presence: true

  belongs_to :user, foreign_key: :user_uuid
  has_many :comments, foreign_key: :post_uuid
end
