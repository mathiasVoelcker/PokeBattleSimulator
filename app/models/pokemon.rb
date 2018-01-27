class Pokemon < ApplicationRecord
  belongs_to :move_1, foreign_key: 'move_1_id', :class_name => "PokemonSpeciesMove", optional: true
  belongs_to :move_2, foreign_key: 'move_2_id', :class_name => "PokemonSpeciesMove", optional: true
  belongs_to :move_3, foreign_key: 'move_3_id', :class_name => "PokemonSpeciesMove", optional: true
  belongs_to :move_4, foreign_key: 'move_4_id', :class_name => "PokemonSpeciesMove", optional: true
  belongs_to :pokemon_specy
  belongs_to :nature
end
