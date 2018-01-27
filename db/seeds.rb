MOVE_URL = 'https://pokeapi.co/api/v2/move/'
POKE_URL = 'http://pokeapi.co/api/v2/pokemon/'
TYPE_URL = 'http://pokeapi.co/api/v2/type/'

require 'httparty'

#Populate Type
for i in 1..18 do
  type_response = HTTParty.get(TYPE_URL + i.to_s)
  type_json = JSON.parse(type_response.body)
  Type.create name: type_json["name"]
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

#Populate Nature
Nature.create name: "hp"
Nature.create name: "attack"
Nature.create name: "defense"
Nature.create name: "sp_attack"
Nature.create name: "sp_defense"
Nature.create name: "speed"

# Populate MoveCategory
MoveCategory.create category: 'physical'
MoveCategory.create category: 'special'
MoveCategory.create category: 'status'

# Populate Move
for i in 1..717 do
  move_response = HTTParty.get(MOVE_URL + i.to_s)
  move_json = JSON.parse(move_response.body)
  name = move_json["names"][2]["name"]
  power = move_json["power"]
  move_category = move_json["damage_class"]["name"]
  if move_category == 'physical'
    move_category_id = 1
  elsif move_category == 'special'
    move_category = 2
  else
    move_category = 3
  end
  Move.create! name: name, base_power: power, move_category_id: move_category_id
end

# Populate PokemonSpecy
for i in 1..802 do
  pokemon_response = HTTParty.get(POKE_URL + i.to_s)
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
end
