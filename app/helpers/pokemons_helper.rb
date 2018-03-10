module PokemonsHelper
  def pokemon_image_url(name)
    # if id < 10
    #   return "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/00" + id.to_s + ".png"
    # elsif id < 100
    #   return "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/0" + id.to_s + ".png"
    # end
    # return "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/" + id.to_s + ".png"
    return "https://img.pokemondb.net/artwork/" + name.to_s + ".jpg"
  end
end
