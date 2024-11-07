class User < ApplicationRecord
  has_secure_password
  self.primary_key = "uuid"

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end
