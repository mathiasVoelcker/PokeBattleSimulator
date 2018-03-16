$(document).on('turbolinks:load', function(){

  var teste = 5
  var pokemons
  var attacking_selected_pokemon
  var defending_selected_pokemon
  var move_changed = false;

  // if(gon.pokemons) {
  //   pokemons = gon.pokemons
  // }
  validate_simulation()

  $("#select_attacking_pokemon").change(function(){
    validate_simulation()
  });
  //
  $("#select_defending_pokemon").change(function(){
    validate_simulation()
  });
  //
  $("#select_attacking_move").change(function(){
    validate_simulation()
  });
  //
  // function get_attacking_selected_pokemon_id(){
  //   if (attacking_selected_pokemon != null) {
  //     return attacking_selected_pokemon.id
  //   }
  //   return null
  // }
  //
  // function define_moves_options(){
  //   var options = ""
  //   if(attacking_selected_pokemon.move_1 != null) {
  //     options += `<option value=${attacking_selected_pokemon.move_1.id}>
  //     ${attacking_selected_pokemon.move_1.name} - Power: ${attacking_selected_pokemon.move_1.base_power}</option>`
  //   }
  //   if(attacking_selected_pokemon.move_2 != null) {
  //     options += `<option value=${attacking_selected_pokemon.move_2.id}>
  //     ${attacking_selected_pokemon.move_2.name} - Power: ${attacking_selected_pokemon.move_2.base_power}</option>`
  //   }
  //   if(attacking_selected_pokemon.move_3 != null) {
  //     options += `<option value=${attacking_selected_pokemon.move_3.id}>
  //     ${attacking_selected_pokemon.move_3.name} - Power: ${attacking_selected_pokemon.move_3.base_power}</option>`
  //   }
  //   if(attacking_selected_pokemon.move_4 != null) {
  //     options += `<option value=${attacking_selected_pokemon.move_4.id}>
  //     ${attacking_selected_pokemon.move_4.name} + - Power: ${attacking_selected_pokemon.move_4.base_power}</option>`
  //   }
  //   return options
  // }

  function validate_simulation(){
    if ($("#select_attacking_pokemon").val() == null) {
      $("#simulate_battle").addClass("disabled")
      return;
    }
    if ($("#select_defending_pokemon").val() == null) {
      $("#simulate_battle").addClass("disabled")
      return;
    }
    $("#simulate_battle").removeClass("disabled")
  }

})
