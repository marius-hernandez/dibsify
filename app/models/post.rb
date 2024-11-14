class Post < ApplicationRecord
  has_many_attached :pictures
  validates :content, presence: true

  belongs_to :user, foreign_key: :user_uuid
  has_many :comments, foreign_key: :post_uuid

  def compressed_pics
    pictures.map do |pic|
      pic.variant(resize_to_limit: [ 500, 500 ]).processed
    end
  end
end
