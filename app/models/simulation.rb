class Simulation < ApplicationRecord

 def set_attributes
  @atk_pokemon = Pokemon.find(self.attacking_pokemon_id)
  @atk_pokemon_species = PokemonSpecy.find(@atk_pokemon.pokemon_species_id)
  @def_pokemon = Pokemon.find(self.defending_pokemon_id)
  @def_pokemon_species = PokemonSpecy.find(@def_pokemon.pokemon_species_id)
  @attack = Attack.find(self.attack_id)
  @attack_element = Element.find(@attack.element_id)
  @atk_pokemon_element1 = Element.find_by(name: @atk_pokemon_species.first_element)
  @atk_pokemon_element2 = Element.find_by(name: @atk_pokemon_species.second_element)
  @def_pokemon_element1 = Element.find_by(name: @def_pokemon_species.first_element)
  @def_pokemon_element2 = Element.find_by(name: @def_pokemon_species.second_element)
end

  def damage
    if @attack.attack_type_id == 0
      return physical_damage
    elsif @attack.attack_type_id == 1
      return special_damage
    end
  end

  def special_damage
    level = @atk_pokemon.level.to_f
    power = @attack.base_power.to_f
    sp_attack = @atk_pokemon.sp_attack_stat.to_f
    sp_defense = @def_pokemon.sp_defense_stat.to_f
    damage = ((((((2*level)/5)+2)*power*(sp_attack/sp_defense))/50)+2)*element_modifier*stab*self.modifier
    return damage.to_i
  end

  def physical_damage
    level = @atk_pokemon.level.to_f
    power = @attack.base_power.to_f
    attack = @atk_pokemon.attack_stat.to_f
    defense = @def_pokemon.defense_stat.to_f
    damage = ((((((2*level)/5)+2)*power*(attack/defense))/50)+2)*element_modifier*stab*self.modifier
    return damage.to_i
  end

  def element_modifier
    if @def_pokemon_element2 == nil
      return @attack_element.strengths[@def_pokemon_element1.id - 1.0]
    end
    return @attack_element.strengths[@def_pokemon_element1.id - 1.0]*@attack_element.strengths[@def_pokemon_element2.id - 1.0]
  end

  def stab
    if @attack_element.name == @atk_pokemon_species.first_element || @attack_element.name == @atk_pokemon_species.second_element
      return 1.5
    end
      return 1.0
  end

end
