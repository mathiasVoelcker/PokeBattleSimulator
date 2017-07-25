class DropDatabase < ActiveRecord::Migration[5.1]
  def change
    drop_table :pokemons
    drop_table :pokemon_species
    drop_table :attacks
    drop_table :attack_types
    drop_table :elements
  end
end
