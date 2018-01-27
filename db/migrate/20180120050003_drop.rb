class Drop < ActiveRecord::Migration[5.1]
  def change
    drop_table :move_categories
    drop_table :moves
    drop_table :pokemon_species
    drop_table :types
    drop_table :type_advantages
    drop_table :pokemon_species_moves
    drop_table :pokemons
    drop_table :nature
    drop_table :stats
  end
end
