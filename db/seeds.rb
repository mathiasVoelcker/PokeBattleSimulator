PokemonSpecy.create id: 1, name: "Bulbasaur", hp: 45, attack: 49, defense: 49,	sp_attack: 65, sp_defense: 65, speed: 45, first_element: "Grass", second_element: "Poison"
PokemonSpecy.create id: 2, name: "Ivysaur", hp: 60, attack: 62, defense: 63,	sp_attack: 80, sp_defense: 80, speed: 60, first_element: "Grass", second_element: "Poison"
PokemonSpecy.create id: 3, name: "Venusaur", hp: 80, attack: 82, defense: 83,	sp_attack: 100, sp_defense: 100, speed: 80, first_element: "Grass", second_element: "Poison"
PokemonSpecy.create id: 4, name: "Chamander", hp: 39, attack: 52, defense: 43,	sp_attack: 60, sp_defense: 50, speed: 65, first_element: "Fire"
PokemonSpecy.create id: 5, name: "Charmeleon", hp: 58, attack: 64, defense: 58,	sp_attack: 80, sp_defense: 65, speed: 80, first_element: "Fire"
PokemonSpecy.create id: 6, name: "Charizard", hp: 78, attack: 84, defense: 78,	sp_attack: 109, sp_defense: 85, speed: 100, first_element: "Fire", second_element: "Flying"
PokemonSpecy.create id: 7, name: "Squirtle", hp: 44, attack: 48, defense: 65,	sp_attack: 50, sp_defense: 64, speed: 43, first_element: "Water"
PokemonSpecy.create id: 8, name: "Wartortle", hp: 59, attack: 63, defense: 80,	sp_attack: 65, sp_defense: 80, speed: 58, first_element: "Water"
PokemonSpecy.create id: 9, name: "Blastoise", hp: 79, attack: 83, defense: 100,	sp_attack: 85, sp_defense: 105, speed: 78, first_element: "Water"
PokemonSpecy.create id: 107, name: "Hitmonchan", hp: 50, attack: 105, defense: 79, sp_attack: 35, sp_defense: 110, speed: 76, first_element: "Fighting"
PokemonSpecy.create id: 384, name: "Rayquaza", hp: 105, attack: 150, defense: 90,	sp_attack: 150, sp_defense: 90, speed: 95, first_element: "Dragon", second_element: "Flying"
PokemonSpecy.create id: 635, name: "Hydreigon", hp: 92, attack: 105, defense: 90,	sp_attack: 125, sp_defense: 90, speed: 98, first_element: "Dark", second_element: "Dragon"


Element.create name: "Normal", strengths: [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 0, 1.0, 1.0, 0.5, 1.0]
Element.create name: "Fire", strengths: [1.0 , 0.5, 0.5, 1.0, 2.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 0.5, 1.0, 0.5, 1.0, 2.0, 1.0]
Element.create name: "Water", strengths: [1.0, 2.0, 0.5, 1.0, 0.5, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0, 1.0, 2.0, 1.0, 0.5, 1.0, 1.0, 1.0]
Element.create name: "Electric", strengths: [1.0, 1.0, 2.0, 0.5, 0.5, 1.0, 1.0, 1.0, 0, 2.0, 1.0, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0, 1.0]
Element.create name: "Grass", strengths: [1.0, 0.5, 2.0, 1.0, 0.5, 1.0, 1.0, 0.5, 2.0, 0.5, 1.0, 0.5, 2.0, 1.0, 0.5, 1.0, 0.5, 1.0]
Element.create name: "Ice", strengths: [1.0, 0.5, 0.5, 1.0, 2.0, 0.5, 1.0, 1.0, 2.0, 2.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 0.5, 1.0]
Element.create name: "Fighting", strengths: [2.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 0.5, 1.0, 0.5, 0.5, 0.5, 2.0, 0, 1.0, 2.0, 2.0, 0.5]
Element.create name: "Poison", strengths: [1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0, 0.5, 0.5, 1.0, 1.0, 1.0, 0.5, 0.5, 1.0, 1.0, 0, 2.0]
Element.create name: "Ground", strengths: [1.0, 2.0, 1.0, 2.0, 0.5, 1.0, 1.0, 2.0, 1.0, 0, 1.0, 0.5, 2.0, 1.0, 1.0, 1.0, 2.0, 1.0]
Element.create name: "Flying", strengths: [1.0, 1.0, 1.0, 0.5, 2.0, 1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 2.0, 0.5, 1.0, 1.0, 1.0, 0.5, 1.0]
Element.create name: "Psychic", strengths: [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 2.0, 1.0, 1.0, 0.5, 1.0, 1.0, 1.0, 1.0, 0, 0.5, 1.0]
Element.create name: "Bug", strengths: [1.0, 0.5, 1.0, 1.0, 2.0, 1.0, 0.5, 0.5, 1.0, 0.5, 2.0, 1.0, 1.0, 0.5, 1.0, 2.0, 0.5, 0.5]
Element.create name: "Rock", strengths: [1.0, 2.0, 1.0, 1.0, 1.0, 2.0, 0.5, 1.0, 0.5, 2.0, 1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 0.5, 1.0]
Element.create name: "Ghost", strengths: [0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0, 2.0, 1.0, 0.5, 1.0, 1.0]
Element.create name: "Dragon", strengths: [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 0.5, 0]
Element.create name: "Dark", strengths: [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0, 2.0, 1.0, 0.5, 1.0, 0.5]
Element.create name: "Steel", strengths: [1.0, 0.5, 0.5, 0.5, 1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0, 1.0, 0.5, 2.0]
Element.create name: "Fairy", strengths: [1.0, 0.5, 1.0, 1.0, 1.0, 1.0, 2.0, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 2.0, 0.5, 1.0]

AttackType.create id: 0, name: "Physical"
AttackType.create id: 1, name: "Special"

Attack.create name: "Fire Blast", base_power: 110, element_id: 2, attack_type_id: 1
Attack.create name: "Petal Dance", base_power: 120, element_id: 5, attack_type_id: 1
Attack.create name: "Aqua Tail", base_power: 90, element_id: 3, attack_type_id: 0
Attack.create name: "Surf", base_power: 90, element_id: 3, attack_type_id: 1

Nature.create name: "Hardy", advantage: "None", disadvantage: "None"
Nature.create name: "Lonely", advantage: "Attack", disadvantage: "Defense"
Nature.create name: "Brave", advantage: "Attack", disadvantage: "Speed"
Nature.create name: "Adamant", advantage: "Attack", disadvantage: "Special Attack"
Nature.create name: "Naughty", advantage: "Attack", disadvantage: "Special Defense"
Nature.create name: "Bold", advantage: "Defense", disadvantage: "Attack"
Nature.create name: "Docile", advantage: "None", disadvantage: "None"
Nature.create name: "Relaxed", advantage: "Defense", disadvantage: "Speed"
Nature.create name: "Impish", advantage: "Defense", disadvantage: "Special Attack"
Nature.create name: "Lax", advantage: "Defense", disadvantage: "Special Defense"
Nature.create name: "Timid", advantage: "Speed", disadvantage: "Attack"
Nature.create name: "Hasty", advantage: "Speed", disadvantage: "Defense"
Nature.create name: "Serious", advantage: "None", disadvantage: "None"
Nature.create name: "Jolly", advantage: "Speed", disadvantage: "Special Attack"
Nature.create name: "Naive", advantage: "Speed", disadvantage: "Special Defense"
Nature.create name: "Modest", advantage: "Special Attack", disadvantage: "Attack"
Nature.create name: "Mild", advantage: "Special Attack", disadvantage: "Defense"
Nature.create name: "Quiet", advantage: "Special Attack", disadvantage: "Speed"
Nature.create name: "Bashful", advantage: "None", disadvantage: "None"
Nature.create name: "Rash", advantage: "Special Attack", disadvantage: "Special Defense"
Nature.create name: "Calm", advantage: "Special Defense", disadvantage: "Attack"
Nature.create name: "Gentle", advantage: "Special Defense", disadvantage: "Defense"
Nature.create name: "Sassy", advantage: "Special Defense", disadvantage: "Speed"
Nature.create name: "Careful", advantage: "Special Defense", disadvantage: "Special Attack"
Nature.create name: "Quirky", advantage: "None", disadvantage: "None"
