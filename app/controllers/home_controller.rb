class HomeController < ApplicationController
  def index
    @pokemons = Pokemon.all
    @pokemon_species = PokemonSpecy.all
  end
end
