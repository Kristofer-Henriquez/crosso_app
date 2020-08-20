class Character < ApplicationRecord
  belongs_to :game
  has_many :color_costumes
end
