class HerosPlayer < ApplicationRecord
  belongs_to :player
  belongs_to :hero
end
