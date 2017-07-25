class CreateTablePokemonSpecies < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_species do |t|
      t.string :name
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :sp_attack
      t.integer :sp_defense
      t.integer :speed
      t.string :first_element
      t.string :second_element

      t.timestamps
    end
  end
end
