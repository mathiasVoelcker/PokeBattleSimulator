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
  $("#pokemon_iv_attack").val() = 0;


  $("#pokemon_iv_attack").focusout(function() {
    if($("#pokemon_iv_attack").val() > 31) {
      $("#attack_iv_error_message").removeClass("error-message-hidden");
      $("#attack_iv_error_message").addClass("error-message");
      errors['iv_attack'] = true;
      $('#create_pokemon_btn').prop('disabled', true);
    }
    else if($("#pokemon_iv_attack").val() <= 31 && $("#attack_iv_error_message").hasClass("error-message")) {
      $("#attack_iv_error_message").removeClass("error-message");
      $("#attack_iv_error_message").addClass("error-message-hidden");
      errors['iv_attack'] = false;
      enable_button();
    }
  });

  $("#pokemon_iv_defense").focusout(function() {
    if($("#pokemon_iv_defense").val() > 31) {
      $("#defense_iv_error_message").removeClass("error-message-hidden");
      $("#defense_iv_error_message").addClass("error-message");
      errors['iv_defense'] = true;
      $('#create_pokemon_btn').prop('disabled', true)
    }
    else if($("#pokemon_iv_defense").val() <= 31 && $("#defense_iv_error_message").hasClass("error-message")) {
      $("#defense_iv_error_message").removeClass("error-message");
      $("#defense_iv_error_message").addClass("error-message-hidden");
      errors['iv_defense'] = false;
      enable_button();
    }
  });

  $("#pokemon_iv_sp_attack").focusout(function() {
    if($("#pokemon_iv_sp_attack").val() > 31) {
      $("#sp_attack_iv_error_message").removeClass("error-message-hidden");
      $("#sp_attack_iv_error_message").addClass("error-message");
      errors['iv_sp_attack'] = true;
      $('#create_pokemon_btn').prop('disabled', true)
    }
    else if($("#pokemon_iv_sp_attack").val() <= 31 && $("#sp_attack_iv_error_message").hasClass("error-message")) {
      $("#sp_attack_iv_error_message").removeClass("error-message");
      $("#sp_attack_iv_error_message").addClass("error-message-hidden");
      errors['iv_sp_attack'] = false;
      enable_button();
    }
  });

  $("#pokemon_iv_sp_defense").focusout(function() {
    if($("#pokemon_iv_sp_defense").val() > 31) {
      $("#sp_defense_iv_error_message").removeClass("error-message-hidden");
      $("#sp_defense_iv_error_message").addClass("error-message");
      errors['iv_sp_defense'] = true;
      $('#create_pokemon_btn').prop('disabled', true)
    }
    else if($("#pokemon_iv_sp_defense").val() <= 31 && $("#sp_defense_iv_error_message").hasClass("error-message")) {
      $("#sp_defense_iv_error_message").removeClass("error-message");
      $("#sp_defense_iv_error_message").addClass("error-message-hidden");
      errors['iv_sp_defense'] = false;
      enable_button();
    }
  });

  $("#pokemon_iv_speed").focusout(function() {
    if($("#pokemon_iv_speed").val() > 31) {
      $("#speed_iv_error_message").removeClass("error-message-hidden");
      $("#speed_iv_error_message").addClass("error-message");
      errors['iv_speed'] = true;
      $('#create_pokemon_btn').prop('disabled', true)
    }
    else if($("#pokemon_iv_speed").val() <= 31 && $("#speed_iv_error_message").hasClass("error-message")) {
      $("#speed_iv_error_message").removeClass("error-message");
      $("#speed_iv_error_message").addClass("error-message-hidden");
      errors['iv_speed'] = false;
      enable_button(); enable_button();
    }
  });

  $("#pokemon_iv_hp").focusout(function() {
    if($("#pokemon_iv_hp").val() > 31) {
      $("#hp_iv_error_message").removeClass("error-message-hidden");
      $("#hp_iv_error_message").addClass("error-message");
      errors['iv_hp'] = true;
      $('#create_pokemon_btn').prop('disabled', true)
    }
    else if($("#pokemon_iv_hp").val() <= 31 && $("#attack_iv_error_message").hasClass("error-message")) {
      $("#hp_iv_error_message").removeClass("error-message");
      $("#hp_iv_error_message").addClass("error-message-hidden");
      errors['iv_hp'] = false;
      enable_button();
    }
  });

  $("#pokemon_ev_attack").focusout(function() {
    if($("#pokemon_ev_attack").val() > 252) {
      $("#attack_ev_error_message").removeClass("error-message-hidden");
      $("#attack_ev_error_message").addClass("error-message");
      errors['ev_attack'] = true;
      $('#create_pokemon_btn').prop('disabled', true)
    }
    else if($("#pokemon_ev_attack").val() <= 252 && $("#attack_ev_error_message").hasClass("error-message")) {
      $("#attack_ev_error_message").removeClass("error-message");
      $("#attack_ev_error_message").addClass("error-message-hidden");
      errors['ev_attack'] = false;
      enable_button();
    }
  });

  $("#pokemon_ev_defense").focusout(function() {
    if($("#pokemon_ev_defense").val() > 252) {
      $("#defense_ev_error_message").removeClass("error-message-hidden");
      $("#defense_ev_error_message").addClass("error-message");
      errors['ev_defense'] = true;
      $('#create_pokemon_btn').prop('disabled', true);
      alert("puts");
    }
    else if($("#pokemon_ev_defense").val() <= 252 && $("#defense_ev_error_message").hasClass("error-message")) {
      $("#defense_ev_error_message").removeClass("error-message");
      $("#defense_ev_error_message").addClass("error-message-hidden");
      errors['ev_defense'] = false;
      enable_button();
    }
  });

  function enable_button(){
    for(var error in errors){
      if(errors[error] === true){
        return;
      }
    }
    $('#create_pokemon_btn').prop('disabled', false);
  }

});
