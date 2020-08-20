class User < ApplicationRecord
  has_many :tips
  has_many :combos
  has_many :tutorials
  has_many :tier_lists
end
