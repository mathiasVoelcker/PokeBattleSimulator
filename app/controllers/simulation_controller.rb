class SimulationController < ApplicationController
  def index
    @pokemons = Pokemon.all
    @pokemon_data = Hash.new
    # @pokemons.map { |p|
    #   @pokemons_data[:name] = p.pokemon_specy.name
    #   @pokemons_data[:hp] = p.hp
    #   @pokemons_data[:attack] = p.attack
    #   @pokemons_data[:defense] = p.defense
    #   @pokemons_data[:sp_attack] = p.sp_attack
    #   @pokemons_data[:sp_defense] = p.sp_defense
    #   @pokemons_data[:speed] = p.speed
    # }
    gon.pokemons = @pokemons_data
  end

  def search
    if params[:search] != nil
      @pokemons = Pokemon.where("name like ?", "%#{params[:search].downcase}%")
    end
  end
end
