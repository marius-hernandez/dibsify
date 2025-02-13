class Comment < ApplicationRecord
  self.primary_key = "uuid"
  validates :comment, presence: true

  belongs_to :post, foreign_key: :post_uuid
  belongs_to :user, foreign_key: :user_uuid
end
