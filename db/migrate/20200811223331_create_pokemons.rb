class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :hp
      t.integer :atk
      t.integer :dfc
      t.integer :sat
      t.integer :sdf
      t.integer :spd

      t.timestamps
    end
  end
end
