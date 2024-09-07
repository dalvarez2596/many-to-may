class CreateJoinTablePlayerHero < ActiveRecord::Migration[7.2]
  def change
    create_join_table :players, :heros do |t|
      t.index [ :player_id, :hero_id ]
      t.index [ :hero_id, :player_id ]
    end
  end
end
