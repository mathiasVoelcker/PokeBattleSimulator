// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//


$(document).ready(function(){

  var stats = ["attack", "defense", "sp_attack", "sp_defense", "speed","hp"];

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

  stats.forEach(function(stat) {
    setValue("#pokemon_specy_" + stat);
    $("#pokemon_specy_" + stat).keyup(function(){
      self.validateBaseStat(stat);
    })
  });

function setValue(inputId){
  if($(inputId).val() === ""){
    $(inputId).val(0);
  }
}

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

function validateBaseStat(stat){
  if($("#pokemon_specy_" + stat).val() === ''){
    $("#pokemon_specy_" + stat).val(0);
    this.select();
  }
}
