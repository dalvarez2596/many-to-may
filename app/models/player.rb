class Player < ApplicationRecord
  has_many :player_heros
  has_many :heros, through: :player_heros

  validates :name, presence: true
  validates :team, presence: true
end
