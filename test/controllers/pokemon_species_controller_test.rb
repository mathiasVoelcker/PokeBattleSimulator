require 'test_helper'

class PokemonSpeciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokemon_specy = pokemon_species(:one)
  end

  test "should get index" do
    get pokemon_species_url
    assert_response :success
  end

  test "should get new" do
    get new_pokemon_specy_url
    assert_response :success
  end

  test "should create pokemon_specy" do
    assert_difference('PokemonSpecy.count') do
      post pokemon_species_url, params: { pokemon_specy: { attack: @pokemon_specy.attack, defense: @pokemon_specy.defense, hp: @pokemon_specy.hp, id: @pokemon_specy.id, name: @pokemon_specy.name, sp_attack: @pokemon_specy.sp_attack, sp_defense: @pokemon_specy.sp_defense, speed: @pokemon_specy.speed } }
    end

    assert_redirected_to pokemon_specy_url(PokemonSpecy.last)
  end

  test "should show pokemon_specy" do
    get pokemon_specy_url(@pokemon_specy)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokemon_specy_url(@pokemon_specy)
    assert_response :success
  end

  test "should update pokemon_specy" do
    patch pokemon_specy_url(@pokemon_specy), params: { pokemon_specy: { attack: @pokemon_specy.attack, defense: @pokemon_specy.defense, hp: @pokemon_specy.hp, id: @pokemon_specy.id, name: @pokemon_specy.name, sp_attack: @pokemon_specy.sp_attack, sp_defense: @pokemon_specy.sp_defense, speed: @pokemon_specy.speed } }
    assert_redirected_to pokemon_specy_url(@pokemon_specy)
  end

  test "should destroy pokemon_specy" do
    assert_difference('PokemonSpecy.count', -1) do
      delete pokemon_specy_url(@pokemon_specy)
    end

    assert_redirected_to pokemon_species_url
  end
end
