class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :edit, :update, :destroy]

  # GET /pokemons
  # GET /pokemons.json
  def index
    @pokemons = Pokemon.all
  end

  # GET /pokemons/1
  # GET /pokemons/1.json
  def show
  end

  # GET /search
  def search
    if params[:search] != nil
      @pokemons_species = PokemonSpecy.where("name like ?", "%#{params[:search].downcase}%")
    end
  end

  # GET /pokemons/new/1
  def new
    @pokemon_species = PokemonSpecy.find(params[:id])
    gon.base_hp = @pokemon_species.base_hp
    gon.base_attack = @pokemon_species.base_attack
    gon.base_defense = @pokemon_species.base_defense
    gon.base_sp_attack = @pokemon_species.base_sp_attack
    gon.base_sp_defense = @pokemon_species.base_sp_defense
    gon.base_speed = @pokemon_species.base_speed


    @pokemon = Pokemon.new
    @natures = Nature.all
    gon.natures = @natures
  end

  # GET /pokemons/1/edit
  def edit
    @pokemon_species = @pokemon.pokemon_specy
    gon.base_hp = @pokemon_species.base_hp
    gon.base_attack = @pokemon_species.base_attack
    gon.base_defense = @pokemon_species.base_defense
    gon.base_sp_attack = @pokemon_species.base_sp_attack
    gon.base_sp_defense = @pokemon_species.base_sp_defense
    gon.base_speed = @pokemon_species.base_speed

    @natures = Nature.all
    gon.natures = @natures
  end

  # POST /pokemons
  # POST /pokemons.json
  def create
    @pokemon = Pokemon.new(pokemon_params)
    puts '==================dentro do create=========================='
    respond_to do |format|
      if @pokemon.save
        format.html { redirect_to '/', notice: 'Pokemon was successfully created.' }
      else
        format.html { render :index }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemons/1
  # PATCH/PUT /pokemons/1.json
  def update
    puts '============================================'
    respond_to do |format|
      if @pokemon.update(pokemon_params)
        puts '======================true no if======================'
        format.html { redirect_to '/', notice: 'Pokemon was successfully updated.' }
      else
        puts '======================false no if======================'
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokemon_params
      params.require(:pokemon).permit(:pokemon_specy_id, :level, :nickname, :hp, :attack, :defense, :sp_attack, :sp_defense, :speed, :iv_attack, :iv_defense, :iv_sp_attack, :iv_sp_defense, :iv_speed, :iv_hp, :ev_attack, :ev_defense, :ev_sp_attack, :ev_sp_defense, :ev_speed, :ev_hp, :nature_id, :move_1_id, :move_2_id, :move_3_id, :move_4_id)
    end
end
