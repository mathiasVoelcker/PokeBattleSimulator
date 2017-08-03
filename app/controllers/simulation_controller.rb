class SimulationController < ApplicationController
  def index
  end

  def new
  end

  # POST simulation
  def simulate
    puts("====================================")
    @simulation = Simulation.new(simulation_params)
    @simulation.set_attributes
    @attacking_pokemon = Pokemon.find(@simulation.attacking_pokemon_id)
    @attacking_pokemon_species = PokemonSpecy.find(@attacking_pokemon.pokemon_species_id)
    @defending_pokemon = Pokemon.find(@simulation.defending_pokemon_id)
    @defending_pokemon_species = PokemonSpecy.find(@defending_pokemon.pokemon_species_id)
    @attack = Attack.find(@simulation.attack_id)
    @hp_before = @defending_pokemon.hp_stat
    damage = @simulation.damage
    @hp_after = (@hp_before - damage)
    if @hp_after < 0
      @hp_after = 0
    end
    render :new
  end



  def show
    @simulation = Simulation.new(simulation_params)
  end

  private
    def simulation_params
      params.require(:simulation).permit(:attacking_pokemon_id, :attack_id, :defending_pokemon_id, :modifier)
    end
end
