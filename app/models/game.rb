class Game < ApplicationRecord
  has_many :characters
  has_many :dlcs
  has_many :stages
  has_many :patch_notes
  has_many :tier_lists
end
