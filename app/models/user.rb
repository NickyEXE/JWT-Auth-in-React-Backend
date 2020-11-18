class User < ApplicationRecord
  has_many :messages
  has_many :channels, through: :messages
  has_many :likes
  has_secure_password

end
