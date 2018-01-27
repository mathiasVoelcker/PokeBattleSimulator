class Move < ApplicationRecord
  has_many :pokemon_species_move
  has_many :pokemon_species, :through => :pokemon_species_move
  has_one :move_category
end
