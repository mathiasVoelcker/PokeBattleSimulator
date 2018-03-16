class SimulationController < ApplicationController

  helper_method :find_moves

  # GET /index
  def index
    @pokemons = Pokemon.all
    if params[:select_attacking_pokemon] != nil
      @attacking_pokemon = Pokemon.find(params[:select_attacking_pokemon])
      @attacking_moves = []
      @attacking_moves << @attacking_pokemon.move_1
      @attacking_moves << @attacking_pokemon.move_2
      @attacking_moves << @attacking_pokemon.move_3
      @attacking_moves << @attacking_pokemon.move_4
    end
    if params[:select_defending_pokemon] != nil
      @defending_pokemon = Pokemon.find(params[:select_defending_pokemon])
      @defending_moves = []
      @defending_moves << @defending_pokemon.move_1
      @defending_moves << @defending_pokemon.move_2
      @defending_moves << @defending_pokemon.move_3
      @defending_moves << @defending_pokemon.move_4
    end

    # @pokemon_data_list = []
    # @pokemons.each do |p|
    #   @pokemon_data_list.push({
    #     :id => p.id,
    #     :name => p.pokemon_specy.name,
    #     :hp => p.hp,
    #     :attack => p.attack,
    #     :defense => p.defense,
    #     :sp_attack => p.sp_attack,
    #     :sp_defense => p.sp_defense,
    #     :speed => p.speed,
    #     :move_1 => p.move_1,
    #     :move_2 => p.move_2,
    #     :move_3 => p.move_3,
    #     :move_4 => p.move_4
    #     })
    # end
    # gon.pokemons = @pokemon_data_list
  end

  def simulate

  end

  def search
    # if params[:search] != nil
    #   @pokemons = Pokemon.where("name like ?", "%#{params[:search].downcase}%")
    # end
    puts "========================================================================"
  end
  #
  # def find_moves(pokemon_id)
  #   if pokemon_id == nil
  #     return nil
  #   end
  #   pokemon = Pokemon.find(pokemon_id)
  #   moves = []
  #   if pokemon.move_1
  #     moves.push(pokemon.move_1)
  #   end
  #   if pokemon.move_2
  #     moves.push({
  #       :id => pokemon.move_2.id,
  #       :name => pokemon.move_2.name,
  #       :base_power => pokemon.move_2.base_power,
  #       :move_category_id => pokemon.move_2.move_category_id
  #     })
  #   end
  #   moves
  # end
end
