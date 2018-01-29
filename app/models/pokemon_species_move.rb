class PokemonSpeciesMove < ApplicationRecord
  belongs_to :move
  belongs_to :pokemon_specy

end
