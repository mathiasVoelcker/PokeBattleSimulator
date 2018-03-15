populate_type = false
populate_type_advantage = false
populate_move_category = false
populate_move = true
populate_pokemon = true
populate_stat = true
populate_nature = true

MOVE_URL = 'https://pokeapi.co/api/v2/move/'
POKE_URL = 'http://pokeapi.co/api/v2/pokemon/'
TYPE_URL = 'http://pokeapi.co/api/v2/type/'
MAX_TRIES = 3

require 'httparty'

#Populate Type
if populate_type
  for i in 1..18 do
    type_response = HTTParty.get(TYPE_URL + i.to_s)
    type_json = JSON.parse(type_response.body)
    Type.create name: type_json["name"]
  end
end

# Type1 "Normal"
# Type2 "Fighting"
# Type3 "Flying"
# Type4 "Poison"
# Type5 "Ground"
# Type6 "Rock"
# Type7 "Bug"
# Type8 "Ghost"
# Type9 "Steel"
# Type10 "Fire"
# Type11 "Water"
# Type12 "Grass"
# Type13 "Electric"
# Type14 "Psychic"
# Type15 "Ice"
# Type16 "Dragon"
# Type17 "Dark"
# Type18 "Fairy"
if populate_type_advantage
  #Normal
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 10, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 11, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 12, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 15, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 2, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 4, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 5, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 3, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 14, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 7, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 6, effect: 0.5
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 8, effect: 0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 16, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 17, effect: 1.0
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 9, effect: 0.5
  TypeAdvantage.create attacking_type_id: 1, defending_type_id: 18, effect: 1.0
  #Fire
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 10, effect: 0.5
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 11, effect: 0.5
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 12, effect: 2.0
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 15, effect: 2.0
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 2, effect: 1.0
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 4, effect: 1.0
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 5, effect: 1.0
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 3, effect: 1.0
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 14, effect: 1.0
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 7, effect: 2.0
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 6, effect: 0.5
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 8, effect: 1.0
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 16, effect: 0.5
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 17, effect: 1.0
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 9, effect: 2.0
  TypeAdvantage.create attacking_type_id: 10, defending_type_id: 18, effect: 1.0
  #Water
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 10, effect: 2.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 11, effect: 0.5
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 12, effect: 0.5
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 15, effect: 1.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 2, effect: 1.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 4, effect: 1.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 5, effect: 2.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 3, effect: 1.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 14, effect: 1.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 7, effect: 1.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 6, effect: 2.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 8, effect: 1.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 16, effect: 0.5
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 17, effect: 1.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 9, effect: 1.0
  TypeAdvantage.create attacking_type_id: 11, defending_type_id: 18, effect: 1.0
  #Electric
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 10, effect: 1.0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 11, effect: 2.0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 13, effect: 0.5
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 12, effect: 0.5
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 15, effect: 1.0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 2, effect: 1.0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 4, effect: 1.0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 5, effect: 0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 3, effect: 2.0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 14, effect: 1.0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 7, effect: 1.0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 6, effect: 1.0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 8, effect: 1.0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 16, effect: 0.5
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 17, effect: 1.0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 9, effect: 1.0
  TypeAdvantage.create attacking_type_id: 13, defending_type_id: 18, effect: 1.0
  #Grass
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 10, effect: 0.5
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 11, effect: 2.0
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 12, effect: 0.5
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 15, effect: 1.0
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 2, effect: 1.0
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 4, effect: 0.5
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 5, effect: 2.0
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 3, effect: 0.5
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 14, effect: 1.0
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 7, effect: 0.5
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 6, effect: 2.0
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 8, effect: 1.0
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 16, effect: 0.5
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 17, effect: 1.0
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 9, effect: 0.5
  TypeAdvantage.create attacking_type_id: 12, defending_type_id: 18, effect: 1.0
  #Ice
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 10, effect: 0.5
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 11, effect: 0.5
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 12, effect: 2.0
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 15, effect: 0.5
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 2, effect: 1.0
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 4, effect: 1.0
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 5, effect: 2.0
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 3, effect: 2.0
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 14, effect: 1.0
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 7, effect: 1.0
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 6, effect: 1.0
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 8, effect: 1.0
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 16, effect: 2.0
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 17, effect: 1.0
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 9, effect: 0.5
  TypeAdvantage.create attacking_type_id: 15, defending_type_id: 18, effect: 1.0
  #Fighting
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 1, effect: 2.0
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 10, effect: 1.0
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 11, effect: 1.0
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 12, effect: 1.0
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 15, effect: 2.0
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 2, effect: 1.0
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 4, effect: 0.5
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 5, effect: 1.0
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 3, effect: 0.5
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 14, effect: 0.5
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 7, effect: 0.5
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 6, effect: 2.0
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 8, effect: 0
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 16, effect: 1.0
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 17, effect: 2.0
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 9, effect: 2.0
  TypeAdvantage.create attacking_type_id: 2, defending_type_id: 18, effect: 0.5
  #Poison
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 10, effect: 1.0
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 11, effect: 1.0
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 12, effect: 2.0
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 15, effect: 1.0
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 2, effect: 1.0
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 4, effect: 0.5
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 5, effect: 0.5
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 3, effect: 1.0
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 14, effect: 1.0
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 7, effect: 1.0
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 6, effect: 0.5
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 8, effect: 0.5
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 16, effect: 1.0
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 17, effect: 1.0
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 9, effect: 0
  TypeAdvantage.create attacking_type_id: 4, defending_type_id: 18, effect: 2.0
  #Ground
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 10, effect: 2.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 11, effect: 1.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 13, effect: 2.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 12, effect: 0.5
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 15, effect: 1.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 2, effect: 1.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 4, effect: 2.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 5, effect: 1.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 3, effect: 0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 14, effect: 1.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 7, effect: 0.5
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 6, effect: 2.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 8, effect: 1.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 16, effect: 1.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 17, effect: 1.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 9, effect: 2.0
  TypeAdvantage.create attacking_type_id: 5, defending_type_id: 18, effect: 1.0
  #Flying
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 10, effect: 1.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 11, effect: 1.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 13, effect: 0.5
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 12, effect: 2.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 15, effect: 1.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 2, effect: 2.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 4, effect: 1.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 5, effect: 1.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 3, effect: 1.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 14, effect: 1.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 7, effect: 2.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 6, effect: 0.5
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 8, effect: 1.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 16, effect: 1.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 17, effect: 1.0
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 9, effect: 0.5
  TypeAdvantage.create attacking_type_id: 3, defending_type_id: 18, effect: 1.0
  #Psychic
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 10, effect: 1.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 11, effect: 1.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 12, effect: 1.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 15, effect: 1.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 2, effect: 2.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 4, effect: 2.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 5, effect: 1.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 3, effect: 1.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 14, effect: 0.5
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 7, effect: 1.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 6, effect: 1.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 8, effect: 1.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 16, effect: 1.0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 17, effect: 0
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 9, effect: 0.5
  TypeAdvantage.create attacking_type_id: 14, defending_type_id: 18, effect: 1.0
  #Bug
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 10, effect: 0.5
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 11, effect: 1.0
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 12, effect: 2.0
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 15, effect: 1.0
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 2, effect: 0.5
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 4, effect: 0.5
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 5, effect: 1.0
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 3, effect: 0.5
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 14, effect: 2.0
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 7, effect: 1.0
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 6, effect: 1.0
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 8, effect: 0.5
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 16, effect: 1.0
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 17, effect: 2.0
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 9, effect: 0.5
  TypeAdvantage.create attacking_type_id: 7, defending_type_id: 18, effect: 0.5
  #Rock
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 10, effect: 2.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 11, effect: 1.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 12, effect: 1.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 15, effect: 2.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 2, effect: 0.5
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 4, effect: 1.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 5, effect: 0.5
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 3, effect: 2.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 14, effect: 1.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 7, effect: 2.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 6, effect: 1.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 8, effect: 1.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 16, effect: 1.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 17, effect: 1.0
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 9, effect: 0.5
  TypeAdvantage.create attacking_type_id: 6, defending_type_id: 18, effect: 1.0
  #Ghost
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 1, effect: 0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 10, effect: 1.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 11, effect: 1.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 12, effect: 1.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 15, effect: 1.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 2, effect: 1.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 4, effect: 1.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 5, effect: 1.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 3, effect: 1.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 14, effect: 2.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 7, effect: 1.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 6, effect: 1.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 8, effect: 2.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 16, effect: 1.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 17, effect: 0.5
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 9, effect: 1.0
  TypeAdvantage.create attacking_type_id: 8, defending_type_id: 18, effect: 1.0
  #Dragon
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 10, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 11, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 12, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 15, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 2, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 4, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 5, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 3, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 14, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 7, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 6, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 8, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 16, effect: 2.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 17, effect: 1.0
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 9, effect: 0.5
  TypeAdvantage.create attacking_type_id: 16, defending_type_id: 18, effect: 0
  #Dark
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 10, effect: 1.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 11, effect: 1.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 12, effect: 1.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 15, effect: 1.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 2, effect: 0.5
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 4, effect: 1.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 5, effect: 1.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 3, effect: 1.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 14, effect: 2.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 7, effect: 1.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 6, effect: 1.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 8, effect: 2.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 16, effect: 1.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 17, effect: 0.5
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 9, effect: 1.0
  TypeAdvantage.create attacking_type_id: 17, defending_type_id: 18, effect: 0.5
  #Steel
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 10, effect: 0.5
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 11, effect: 0.5
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 13, effect: 0.5
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 12, effect: 1.0
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 15, effect: 2.0
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 2, effect: 1.0
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 4, effect: 1.0
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 5, effect: 1.0
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 3, effect: 1.0
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 14, effect: 1.0
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 7, effect: 1.0
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 6, effect: 2.0
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 8, effect: 1.0
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 16, effect: 1.0
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 17, effect: 1.0
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 9, effect: 0.5
  TypeAdvantage.create attacking_type_id: 9, defending_type_id: 18, effect: 2.0
  #Fairy
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 1, effect: 1.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 10, effect: 0.5
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 11, effect: 1.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 13, effect: 1.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 12, effect: 1.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 15, effect: 1.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 2, effect: 2.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 4, effect: 0.5
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 5, effect: 1.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 3, effect: 1.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 14, effect: 1.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 7, effect: 1.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 6, effect: 1.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 8, effect: 1.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 16, effect: 2.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 17, effect: 2.0
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 9, effect: 0.5
  TypeAdvantage.create attacking_type_id: 18, defending_type_id: 18, effect: 1.0
end

if populate_move_category
  # Populate MoveCategory
  MoveCategory.create category: 'physical'
  MoveCategory.create category: 'special'
  MoveCategory.create category: 'status'
end

if populate_move
  # Populate Move
  for i in 718..718 do
    move_request_times_tried = 0
    begin
      move_response = HTTParty.get(MOVE_URL + i.to_s)
    rescue Net::ReadTimeout => error
      move_request_times_tried += 1
      if move_request_times_tried == MAX_TRIES
        exit(1)
      else
        retry
      end
    end
    move_json = JSON.parse(move_response.body)
    name = move_json["names"][2]["name"]
    power = move_json["power"]
    move_type_id = move_json["type"]["url"][31, 33].tr('/', '')
    move_category = move_json["damage_class"]["name"]
    if move_category == 'physical'
      move_category_id = 1
    elsif move_category == 'special'
      move_category = 2
    else
      move_category = 3
    end
    Move.create! name: name, base_power: power, type_id: move_type_id, move_category_id: move_category_id
    puts `move #{name} created`
  end
end

if populate_pokemon
  # Populate PokemonSpecy
  for i in 774..802 do
    pokemon_request_times_tried = 0
    begin
      pokemon_response = HTTParty.get(POKE_URL + i.to_s)
    rescue Net::ReadTimeout => errors
      pokemon_request_times_tried += 1
      if pokemon_request_times_tried == MAX_TRIES
        exit(1)
      else
        retry
      end
    end
    pokemon_json = JSON.parse(pokemon_response.body)
    name = pokemon_json["forms"][0]["name"]
    stats = pokemon_json["stats"]
    types = pokemon_json["types"]
    first_type_id = types[0]["type"]["url"][31, 33].tr('/', '')
    if(types.size > 1)
      second_type_id = types[1]["type"]["url"][31, 33].tr('/', '')
      PokemonSpecy.create name: name, national_numb: i, base_hp: stats[5]["base_stat"], base_attack: stats[4]["base_stat"], base_defense: stats[3]["base_stat"], base_sp_attack: stats[2]["base_stat"], base_sp_defense: stats[1]["base_stat"], base_speed: stats[0]["base_stat"], first_type_id: first_type_id, second_type_id: second_type_id
    else
      PokemonSpecy.create name: name, national_numb: i, base_hp: stats[5]["base_stat"], base_attack: stats[4]["base_stat"], base_defense: stats[3]["base_stat"], base_sp_attack: stats[2]["base_stat"], base_sp_defense: stats[1]["base_stat"], base_speed: stats[0]["base_stat"], first_type_id: first_type_id
    end
    # Populate PokemonSpeciesMove
    moves = pokemon_json["moves"]
    moves.each do |move|
      move_id = move["move"]["url"][31, 33].tr('/', '')
      PokemonSpeciesMove.create! pokemon_specy_id: i, move_id: move_id
    end
    puts "pokemon#{name}created"
  end
end

if populate_stat
  #Populate Stat
  Stat.create name: "hp"
  Stat.create name: "attack"
  Stat.create name: "defense"
  Stat.create name: "sp_attack"
  Stat.create name: "sp_defense"
  Stat.create name: "speed"
end

if populate_nature
  Nature.create name: "Hardy"
  Nature.create name: "Lonely", strong_stat_id: 2, weak_stat_id: 3
  Nature.create name: "Brave", strong_stat_id: 2, weak_stat_id: 6
  Nature.create name: "Adamant", strong_stat_id: 2, weak_stat_id: 4
  Nature.create name: "Naughty", strong_stat_id: 2, weak_stat_id: 5
  Nature.create name: "Docile"
  Nature.create name: "Bold", strong_stat_id: 3, weak_stat_id: 2
  Nature.create name: "Relaxed", strong_stat_id: 3, weak_stat_id: 6
  Nature.create name: "Impish", strong_stat_id: 3, weak_stat_id: 4
  Nature.create name: "Lax", strong_stat_id: 3, weak_stat_id: 5
  Nature.create name: "Serious"
  Nature.create name: "Timid", strong_stat_id: 6, weak_stat_id: 2
  Nature.create name: "Hasty", strong_stat_id: 6, weak_stat_id: 3
  Nature.create name: "Jolly", strong_stat_id: 6, weak_stat_id: 4
  Nature.create name: "Naive", strong_stat_id: 6, weak_stat_id: 5
  Nature.create name: "Bashful"
  Nature.create name: "Modest", strong_stat_id: 4, weak_stat_id: 2
  Nature.create name: "Mild", strong_stat_id: 4, weak_stat_id: 3
  Nature.create name: "Quiet", strong_stat_id: 4, weak_stat_id: 6
  Nature.create name: "Rash", strong_stat_id: 4, weak_stat_id: 5
  Nature.create name: "Quirky"
  Nature.create name: "Calm", strong_stat_id: 5, weak_stat_id: 2
  Nature.create name: "Gentle", strong_stat_id: 5, weak_stat_id: 3
  Nature.create name: "Sassy", strong_stat_id: 5, weak_stat_id: 6
  Nature.create name: "Careful", strong_stat_id: 5, weak_stat_id: 4
end
