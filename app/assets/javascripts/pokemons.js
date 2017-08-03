//= require jquery
//= require jquery_ujs
//= require bootstrap-select
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require turbolinks

$(document).ready(function(){

  var pokemons_species = $('#pokemons').data('source')

  $('#js_test').addClass("test");
  $('#pokemon_nickname').addClass("form-control");
  $('#pokemon_level').val() = 5;

  var pokemons = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    prefetch: '../data/films/post_1960.json',
    remote: pokemon_species
  });



  $('#remote .typeahead').typeahead(null, {
    name: 'pokemons',
    display: 'value',
    source: pokemons_species
  });
});
