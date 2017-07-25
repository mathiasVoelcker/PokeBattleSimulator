class Pokemon < ApplicationRecord
  has_one :pokemon_species
  has_one :nature

  def attack_stat
    pokemon_species = PokemonSpecy.find(self.pokemon_species_id)
    return ((((2*pokemon_species.attack+self.iv_attack+(self.ev_attack/4.nonzero?))*self.level/100)+5)*nature_modifier("Attack")).to_int
  end

  def defense_stat
    pokemon_species = PokemonSpecy.find(self.pokemon_species_id)
    return ((((2*pokemon_species.defense+self.iv_defense+(self.ev_defense/4.nonzero?))*self.level/100)+5)*nature_modifier("Defense")).to_int
  end

  def sp_attack_stat
    pokemon_species = PokemonSpecy.find(self.pokemon_species_id)
    return ((((2*pokemon_species.sp_attack+self.iv_sp_attack+(self.ev_sp_attack/4.nonzero?))*self.level/100)+5)*nature_modifier("Special Attack")).to_int
  end

  def sp_defense_stat
    pokemon_species = PokemonSpecy.find(self.pokemon_species_id)
    return ((((2*pokemon_species.sp_defense+self.iv_sp_defense+(self.ev_sp_defense/4.nonzero?))*self.level/100)+5)*nature_modifier("Special Defense")).to_int
  end

  def speed_stat
    pokemon_species = PokemonSpecy.find(self.pokemon_species_id)
    return ((((2*pokemon_species.speed+self.iv_speed+(self.ev_speed/4.nonzero?))*self.level/100)+5)*nature_modifier("Speed")).to_int
  end

  def hp_stat
    pokemon_species = PokemonSpecy.find(self.pokemon_species_id)
    return ((2*pokemon_species.hp+self.iv_hp+(self.ev_hp/4.nonzero?))*self.level/100)+self.level+10
  end

  def nature_modifier stat
    nature = Nature.find(self.nature_id)
    if stat == nature.advantage
      return 1.1
    elsif stat == nature.disadvantage
      return 0.9
    else
      return 1
    end
  end

  def context
    species_name = PokemonSpecy.find(self.pokemon_species_id).name
    if self.nickname != ""
      context = species_name + "(" + self.nickname + ") - Level " + self.level.to_s
    else
      context = species_name + " - Level " + self.level.to_s
    end
  end
end
