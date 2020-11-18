class User < ApplicationRecord
  has_many :messages
  has_many :channels, through: :messages
  has_secure_password

end
