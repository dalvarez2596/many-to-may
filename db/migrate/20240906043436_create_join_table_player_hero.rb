class CreateJoinTablePlayerHero < ActiveRecord::Migration[7.2]
  def change
    create_table :player_hero do |t|
      t.belongs_to :player
      t.belongs_to :hero
      t.timestamps
    end
  end
end
