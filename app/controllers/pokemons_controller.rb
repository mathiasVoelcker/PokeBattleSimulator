include PokemonsHelper

class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :edit, :update, :destroy]
  before_action :set_pokemon_species, only:[:index, :new, :edit, :show]
  # GET /pokemons
  # GET /pokemons.json
  def index
    @pokemons = Pokemon.all
    @natures = Nature.all
  end

  # GET /pokemons/1
  # GET /pokemons/1.json
  def show
    @species = @pokemon_species.find(@pokemon.pokemon_species_id)
    @attack = @pokemon.attack_stat
    @defense = @pokemon.defense_stat
    @sp_attack = @pokemon.sp_attack_stat
    @sp_defense = @pokemon.sp_defense_stat
    @speed = @pokemon.speed_stat
    @hp = @pokemon.hp_stat
  end

  # GET /pokemons/new
  def new
    @pokemon = Pokemon.new
    @natures = Nature.all
  end

  # GET /pokemons/1/edit
  def edit
    @natures = Nature.all
  end

  # POST /pokemons
  # POST /pokemons.json
  def create
    @pokemon = Pokemon.new(pokemon_params)
    respond_to do |format|
      if @pokemon.save
        format.html { redirect_to @pokemon, notice: 'Pokemon was successfully created.' }
        format.json { render :show, status: :created, location: @pokemon }
      else
        format.html { render :new }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemons/1
  # PATCH/PUT /pokemons/1.json
  def update
    respond_to do |format|
      if @pokemon.update(pokemon_params)
        format.html { redirect_to @pokemon, notice: 'Pokemon was successfully updated.' }
        format.json { render :show, status: :ok, location: @pokemon }
      else
        format.html { render :edit }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemons/1
  # DELETE /pokemons/1.json
  def destroy
    @pokemon.destroy
    respond_to do |format|
      format.html { redirect_to pokemons_url, notice: 'Pokemon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon
      @pokemon = Pokemon.find(params[:id])
    end

    def set_pokemon_species
      @pokemon_species = PokemonSpecy.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokemon_params
      params.require(:pokemon).permit(:pokemon_species_id, :level, :nickname, :iv_attack, :iv_defense, :iv_sp_attack, :iv_sp_defense, :iv_speed, :iv_hp, :ev_attack, :ev_defense, :ev_sp_attack, :ev_sp_defense, :ev_speed, :ev_hp, :nature_id)
    end
end
