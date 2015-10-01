class CreateJoingames < ActiveRecord::Migration
  def change
    create_table :joingames do |t|
      t.integer :user_id
      t.integer :game_id

      t.timestamps

      # add_index :joingames, [:user_id, :game_id]
      # add_index :joingames, :game_id
    end
  end
end
