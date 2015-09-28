class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|

      t.integer :row_position
      t.integer :col_position
      t.boolean :alive
      t.string  :color
      t.string  :piece_type

      t.timestamps
    end
  end
end
