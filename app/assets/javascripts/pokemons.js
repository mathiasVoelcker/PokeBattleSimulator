$(document).on('turbolinks:load', function(){

  var stats = [
    { id: 1, name: "hp" },
    { id: 2, name: "attack" },
    { id: 3, name: "defense" },
    { id: 4, name: "sp_attack" },
    { id: 5, name: "sp_defense" },
    { id: 6, name: "speed"}
  ];

  $("#pokemon_level").val(5);

  var natures = gon.natures
  console.log(natures)
  var natureSelected = natures[0];

  $("#pokemon_nature").change(function(){
    natures.forEach(function(nature){
      if(nature.id == $("#pokemon_nature").val()) {
        natureSelected = nature;
      }
    })
    update_total_stats();
  })

  $("#pokemon_level").keyup(function(){
    update_total_stats();
  })


  stats.forEach(function(stat) {
    $(`#pokemon_iv_${stat.name}`).val(0);
    $(`#pokemon_iv_${stat.name}`).keyup(function(){
      console.log($("#pokemon_nature").val());
      update_total_stats()
    });
    $(`#pokemon_ev_${stat.name}`).val(0);
    $(`#pokemon_ev_${stat.name}`).keyup(function(){
      update_total_stats()
    });
  })

  update_total_stats();

  function update_total_stats() {
    $('#pokemon_hp').text(calculate_hp());
    $('#pokemon_attack').text(calculate_attack());
    $('#pokemon_defense').text(calculate_defense());
    $('#pokemon_sp_attack').text(calculate_sp_attack());
    $('#pokemon_sp_defense').text(calculate_sp_defense());
    $('#pokemon_speed').text(calculate_speed());
  }

  function calculate_hp() {
    var iv = parseInt($('#pokemon_iv_hp').val());
    var ev = parseInt($('#pokemon_ev_hp').val());
    var level = parseInt($('#pokemon_level').val());
    var hp = ((( gon.base_hp * 2 + iv + ( ev / 4 )) * level ) / 100 ) + level + 10;
    $('#hp').val(hp);
    return Math.ceil(hp);
  }

  function calculate_attack() {
    var iv = parseInt($('#pokemon_iv_attack').val());
    var ev = parseInt($('#pokemon_ev_attack').val());
    var level = parseInt($('#pokemon_level').val());
    var attack = (((( gon.base_attack * 2 + iv  + ( ev / 4 )) * level ) / 100 ) + 5) * calculatNature(2);
    $('#attack').val(attack);
    return Math.ceil(attack);
  }

  function calculate_defense() {
    var iv = parseInt($('#pokemon_iv_defense').val());
    var ev = parseInt($('#pokemon_ev_defense').val());
    var level = parseInt($('#pokemon_level').val());
    var defense = (((( gon.base_defense * 2 + iv  + ( ev / 4 )) * level ) / 100 ) + 5) * calculatNature(3);
    $('#defense').val(defense);
    return Math.ceil(defense);
  }

  function calculate_sp_attack() {
    var iv = parseInt($('#pokemon_iv_sp_attack').val());
    var ev = parseInt($('#pokemon_ev_sp_attack').val());
    var level = parseInt($('#pokemon_level').val());
    var sp_attack = (((( gon.base_sp_attack * 2 + iv + ( ev / 4 )) * level ) / 100 ) + 5) * calculatNature(4);
    $('#sp_attack').val(sp_attack);
    return Math.ceil(sp_attack);
  }

  function calculate_sp_defense() {
    var iv = parseInt($('#pokemon_iv_sp_defense').val());
    var ev = parseInt($('#pokemon_ev_sp_defense').val());
    var level = parseInt($('#pokemon_level').val());
    var sp_defense = (((( gon.base_sp_defense * 2 + iv + ( ev  / 4 )) * level ) / 100 ) + 5) * calculatNature(5);
    $('#sp_defense').val(sp_defense);
    return Math.ceil(sp_defense);
  }

  function calculate_speed() {
    var iv = parseInt($('#pokemon_iv_speed').val());
    var ev = parseInt($('#pokemon_ev_speed').val());
    var level = parseInt($('#pokemon_level').val());
    var speed = (((( gon.base_speed * 2 + iv + ( ev / 4 )) * level ) / 100 ) + 5) * calculatNature(6);
    $('#speed').val(speed);
    return Math.ceil(speed);
  }

  function calculatNature(stat_id) {
    if (natureSelected.strong_stat_id == stat_id) {
      return 1.1
    }
    if (natureSelected.weak_stat_id == stat_id) {
      return 0.9
    }
    return 1;
  }

})
