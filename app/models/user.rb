class User < ApplicationRecord
  has_many :tips
  has_many :combos
  has_many :tutorials
  has_many :tier_lists

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
