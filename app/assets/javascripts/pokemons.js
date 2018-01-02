$(document).ready(function(){

  var stats = ["attack", "defense", "sp_attack", "sp_defense", "speed","hp"];

  if($("#pokemon_level").val() === ""){
    $("#pokemon_level").attr("value", 5);
  }

  $("#pokemon_specy_id").keyup(function(){
    var error = false;
    if($("#pokemon_specy_id").val() === ""){
      $("#pokemon_specy_id").val(0)
      $("#pokemon_specy_id").select()
    }
    gon.pokemons.forEach(function(pokemon_id){
      if(parseInt($("#pokemon_specy_id").val()) === pokemon_id){
        $("#pokemon_id_error_message").addClass("error-message");
        $("#pokemon_id_error_message").removeClass("error-message-hidden");
        $("#create_pokemon_species_btn").prop("disabled", true);
        error = true;
      }
    });
    if(error == false){
      $("#pokemon_id_error_message").addClass("error-message-hidden");
      $("#pokemon_id_error_message").removeClass("error-message");
      $("#create_pokemon_species_btn").prop("disabled", false);
    }
  });

  setValue("#pokemon_ev_attack");
  setValue("#pokemon_ev_defense");
  setValue("#pokemon_ev_sp_attack");
  setValue("#pokemon_ev_sp_defense");
  setValue("#pokemon_ev_speed");
  setValue("#pokemon_ev_hp");
  $("#create_attack_btn").prop('disabled', true);
  $("#create_simulation_btn").prop('disabled', true);
//pokemon form validation
  $("#pokemon_level").keyup(function(){
    if($("#pokemon_level").val() === ''){
      $("#pokemon_level").val(0);
      $("#pokemon_level").select();
    }
    else if($("#pokemon_level").val() > 100){
      $("#pokemon_level").val(100);
    }
  })

  stats.forEach(function(stat) {
    setValue("#pokemon_iv_" + stat);
    setValue("#pokemon_ev_" + stat);
    $("#pokemon_ev_" + stat).keyup(function(){
      self.validateEvInput(stat);
    });
    $("#pokemon_iv_" + stat).keyup(function(){
      self.validateIvInput(stat);
    });
  });

});

function checkEvSum(){
  var sum = 0;
  sum = parseInt($("#pokemon_ev_attack").val()) + parseInt($("#pokemon_ev_defense").val()) + parseInt($("#pokemon_ev_sp_attack").val()) + parseInt($("#pokemon_ev_sp_defense").val()) + parseInt($("#pokemon_ev_speed").val()) + parseInt($("#pokemon_ev_hp").val());
  if(sum > 510){
    $("#ev_sum_error_message").removeClass("error-message-hidden");
    $("#ev_sum_error_message").addClass("error-message");
    $('#create_pokemon_btn').prop('disabled', true);
  }
  else if($("#ev_sum_error_message").hasClass("error-message")){
    $("#ev_sum_error_message").removeClass("error-message");
    $("#ev_sum_error_message").addClass("error-message-hidden");
    $('#create_pokemon_btn').prop('disabled', false);
  }
}

function validateEvInput(stat){
  if($("#pokemon_ev_" + stat).val() > 252) {
    $("#pokemon_ev_" + stat).val(252);
  }
  else if($("#pokemon_ev_" + stat).val() === '') {
    $("#pokemon_ev_" + stat).val(0);
  }
  checkEvSum();
}

function validateIvInput(stat){
  if($("#pokemon_iv_" + stat).val() > 31) {
    $("#pokemon_iv_" + stat).val(31);
  }
  else if($("#pokemon_iv_" + stat).val() === '') {
    $("#pokemon_iv_" + stat).val(0);
  }
}
