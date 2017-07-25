json.extract! pokemon, :id, :pokemon_species_id, :level, :nickname, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
