module ApplicationHelper
  def type_class(type_id)

  end

  def pokemon_image_url(name)
    return "https://img.pokemondb.net/artwork/" + name.to_s + ".jpg"
  end

end
