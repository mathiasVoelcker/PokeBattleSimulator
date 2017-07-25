class PokemonSpeciesController < ApplicationController
  before_action :set_pokemon_specy, only: [:show, :edit, :update, :destroy]
  before_action :set_elements, only: [:index, :new, :show, :edit, :update, :destroy]
  # GET /pokemon_species
  # GET /pokemon_species.json
  def index
    @pokemon_species = PokemonSpecy.all
  end

  # GET /pokemon_species/1
  # GET /pokemon_species/1.json
  def show
  end

  # GET /pokemon_species/new
  def new
    @pokemon_specy = PokemonSpecy.new
  end

  # GET /pokemon_species/1/edit
  def edit
  end

  # POST /pokemon_species
  # POST /pokemon_species.json
  def create
    @pokemon_specy = PokemonSpecy.new(pokemon_specy_params)

    respond_to do |format|
      if @pokemon_specy.save
        format.html { redirect_to @pokemon_specy, notice: 'Pokemon species was successfully created.' }
        format.json { render :show, status: :created, location: @pokemon_specy }
      else
        format.html { render :new }
        format.json { render json: @pokemon_specy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemon_species/1
  # PATCH/PUT /pokemon_species/1.json
  def update
    respond_to do |format|
      if @pokemon_specy.update(pokemon_specy_params)
        format.html { redirect_to @pokemon_specy, notice: 'Pokemon species was successfully updated.' }
        format.json { render :show, status: :ok, location: @pokemon_specy }
      else
        format.html { render :edit }
        format.json { render json: @pokemon_specy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemon_species/1
  # DELETE /pokemon_species/1.json
  def destroy
    @pokemon_specy.destroy
    respond_to do |format|
      format.html { redirect_to pokemon_species_url, notice: 'Pokemon species was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon_specy
      @pokemon_specy = PokemonSpecy.find(params[:id])
    end

    def set_elements
      @elements = Element.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokemon_specy_params
      params.require(:pokemon_specy).permit(:id, :name, :first_element, :second_element, :hp, :attack, :defense, :sp_attack, :sp_defense, :speed)
    end
end
