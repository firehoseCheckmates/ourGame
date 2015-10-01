class AddUserIdAndGameIdToPieces < ActiveRecord::Migration
  def change
    add_reference :pieces, :user, index: true
    add_reference :pieces, :game, index: true
  end
end
