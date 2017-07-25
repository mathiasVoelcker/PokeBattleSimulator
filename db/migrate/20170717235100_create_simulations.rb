class CreateSimulations < ActiveRecord::Migration[5.1]
  def change
    create_table :simulations do |t|
      t.integer :attacking_pokemon_id
      t.integer :attack_id
      t.integer :defending_pokemon_id
      t.timestamps
    end
  end
end
