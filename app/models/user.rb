class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true, length: {minimum: 6 }
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 }
  validates :email, uniqueness: true
  before_validation { email.downcase! }
  has_many :tasks
end
