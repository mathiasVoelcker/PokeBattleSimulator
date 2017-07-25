class CreateTablePokemon < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.integer :pokemon_species_id
      t.integer :level
      t.string :nickname
      t.integer :iv_attack
      t.integer :iv_defense
      t.integer :iv_sp_attack
      t.integer :iv_sp_defense
      t.integer :iv_speed
      t.integer :iv_hp
      t.integer :ev_attack
      t.integer :ev_defense
      t.integer :ev_sp_attack
      t.integer :ev_sp_defense
      t.integer :ev_speed
      t.integer :ev_hp
      t.string :nature

      t.timestamps
    end
  end
end
