class Hero < ApplicationRecord
  has_many :player_heros
  has_many :players, through: :player_heros
end
