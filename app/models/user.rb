class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: {maximum: 15}
  validates :email, presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :password, length: {in: 8..32}, format:{with:/\A([\w+\-.])\z/}
  has_secure_password
end
