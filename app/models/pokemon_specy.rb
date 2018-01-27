class PokemonSpecy < ApplicationRecord
  belongs_to :first_type, foreign_key: 'first_type_id', :class_name => "Type"
  belongs_to :second_type, foreign_key: 'second_type_id', :class_name => "Type", optional: true
  has_many :pokemon_species_moves
  has_many :moves, :through => :pokemon_species_moves
  has_many :pokemons
end
