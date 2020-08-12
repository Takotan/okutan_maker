class Move < ActiveRecord::Migration[6.0]
  def change
    drop_table :moves
    drop_table :pmoves
  end
end

