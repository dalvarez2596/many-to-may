class RenamePlayerHeroToPlayersHeros < ActiveRecord::Migration[7.2]
  def change
    rename_table :player_hero, :player_heros
  end
end
