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
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require bootstrap
//= require turbolinks
//= require_tree .

document.addEventListener("turbolinks:load", function() {

  errors = {iv_attack: false, iv_defense: false, iv_sp_attack: false, iv_sp_defense: false, iv_speed: false, iv_hp: false, ev_attack: false, ev_defense: false, ev_sp_attack: false, ev_sp_defense: false, ev_speed: false, ev_hp: false, ev_sum: false};
  var stats = ["attack", "defense", "sp_attack", "sp_defense", "speed","hp"];

  if($("#pokemon_level").val() === ""){
    $("#pokemon_level").attr("value", 5);
  }

  setValue("#pokemon_ev_attack");
  setValue("#pokemon_ev_defense");
  setValue("#pokemon_ev_sp_attack");
  setValue("#pokemon_ev_sp_defense");
  setValue("#pokemon_ev_speed");
  setValue("#pokemon_ev_hp");


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
    $("#pokemon_ev_" + stat).keyup(function(){
      self.validateEvInput(stat);
      validate_empty("ev_" + stat);
    });
    $("#pokemon_iv_" + stat).keyup(function(){
      self.validateIvInput(stat);
      validate_empty("iv_" + stat);
    });
  });
});

function setValue(inputId){
  if($(inputId).val() === ""){
    $(inputId).attr("value", 0);
  }
}

function enable_button(){
  for(var error in errors){
    if(errors[error] === true){
      return;
    }
  }
  $('#create_pokemon_btn').prop('disabled', false);
}

function checkEvSum(){
  var sum = 0;
  sum = parseInt($("#pokemon_ev_attack").val()) + parseInt($("#pokemon_ev_defense").val()) + parseInt($("#pokemon_ev_sp_attack").val()) + parseInt($("#pokemon_ev_sp_defense").val()) + parseInt($("#pokemon_ev_speed").val()) + parseInt($("#pokemon_ev_hp").val());
  if(sum > 510){
    $("#ev_sum_error_message").removeClass("error-message-hidden");
    $("#ev_sum_error_message").addClass("error-message");
    errors['ev_sum'] = true;
    $('#create_pokemon_btn').prop('disabled', true);
  }
  else if($("#ev_sum_error_message").hasClass("error-message")){
    $("#ev_sum_error_message").removeClass("error-message");
    $("#ev_sum_error_message").addClass("error-message-hidden");
    errors['ev_sum'] = false;
  }
}

function validateEvInput(stat){
  if($("#pokemon_ev_" + stat).val() > 252) {
    $("#" + stat + "_ev_error_message").removeClass("error-message-hidden");
    $("#" + stat + "_ev_error_message").addClass("error-message");
    errors['ev_' + stat] = true;
    $('#create_pokemon_btn').prop('disabled', true);
  }
  else if($("#" + stat + "_ev_error_message").hasClass("error-message")) {
    $("#" + stat + "_ev_error_message").removeClass("error-message");
    $("#" + stat + "_ev_error_message").addClass("error-message-hidden");
    errors['ev_' + stat] = false;
  }
  checkEvSum();
  enable_button();
}

function validateIvInput(stat){
    if($("#pokemon_iv_" + stat).val() > 31) {
      $("#" + stat + "_iv_error_message").removeClass("error-message-hidden");
      $("#" + stat + "_iv_error_message").addClass("error-message");
      errors['iv_' + stat] = true;
      $('#create_pokemon_btn').prop('disabled', true)
    }
    else if($("#pokemon_iv_" + stat).val() <= 31 && $("#" + stat + "_iv_error_message").hasClass("error-message")) {
      $("#" + stat + "_iv_error_message").removeClass("error-message");
      $("#" + stat + "_iv_error_message").addClass("error-message-hidden");
      errors['iv_' + stat] = false;
      enable_button();
    }
}

function validate_empty(stat){
  if($("#pokemon_" + stat).val() === ""){
    $("#pokemon_" + stat).val(0);
    $("#pokemon_" + stat).select();
  }
}
