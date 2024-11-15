class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
  authentication_keys: [ :email ]
  # :trackable,:confirmable,
  self.primary_key = "uuid"


  has_many :posts, foreign_key: "user_uuid"
  has_many :comments, foreign_key: "user_uuid"

  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5, maximum: 255 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }


  def compressed_pics
    pictures.map do |pic|
      pic.variant(resize_to_limit: [ 150, 150 ]).processed
    end
  end
end
