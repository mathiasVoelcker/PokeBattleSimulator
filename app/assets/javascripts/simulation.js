$(document).on('turbolinks:load', function(){

  var pokemons
  var selected_pokemon

  if(gon.pokemons) {
    pokemons = gon.pokemons
    console.log(pokemons)
  }

  $("#select_attacking_pokemon").change(function(){
    selected_pokemon = pokemons.find(function(pokemon){
      return pokemon.id == $("#select_attacking_pokemon").val();
    });
    console.log(selected_pokemon)
    $("#attacking_pokemon_hp").text(`Hp: ${ selected_pokemon.hp }`)
    $("#attacking_pokemon_attack").text(`Attack: ${ selected_pokemon.attack }`)
    $("#attacking_pokemon_defense").text(`Defense: ${ selected_pokemon.defense }`)
    $("#attacking_pokemon_sp_attack").text(`Special Attack: ${ selected_pokemon.sp_attack }`)
    $("#attacking_pokemon_sp_defense").text(`Special Defense: ${ selected_pokemon.sp_defense }`)
    $("#attacking_pokemon_speed").text(`Speed: ${ selected_pokemon.speed }`)
    $("#attacking_pokemon_img").attr("src", pokemon_image_url(selected_pokemon_name))
  })

  function pokemon_image_url(name) {
    return `https://img.pokemondb.net/artwork/${name}.jpg`
  }


})
