$(document).ready(function(){

  var pokemons_species = $('#pokemons').data('source')

  $('#pokemon_nickname').addClass("form-control");
  $('#pokemon_level').val() = 5;
  $('#teste').val() = 

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
