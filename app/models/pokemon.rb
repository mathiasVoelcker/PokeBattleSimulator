class Pokemon < ApplicationRecord
  belongs_to :move_1, foreign_key: 'move_1_id', :class_name => "PokemonSpeciesMove", optional: true
  belongs_to :move_2, foreign_key: 'move_2_id', :class_name => "PokemonSpeciesMove", optional: true
  belongs_to :move_3, foreign_key: 'move_3_id', :class_name => "PokemonSpeciesMove", optional: true
  belongs_to :move_4, foreign_key: 'move_4_id', :class_name => "PokemonSpeciesMove", optional: true
  belongs_to :pokemon_specy
  belongs_to :nature

  def attack_stat
    return ((((2*self.pokemon_specy.attack+self.iv_attack+(self.ev_attack/4.nonzero?))*self.level/100)+5)*nature_modifier("Attack")).to_int
  end

  def defense_stat
    return ((((2*pokemon_specy.defense+self.iv_defense+(self.ev_defense/4.nonzero?))*self.level/100)+5)*nature_modifier("Defense")).to_int
  end

  def sp_attack_stat
    return ((((2*pokemon_specy.sp_attack+self.iv_sp_attack+(self.ev_sp_attack/4.nonzero?))*self.level/100)+5)*nature_modifier("Special Attack")).to_int
  end

  def sp_defense_stat
    return ((((2*pokemon_specy.sp_defense+self.iv_sp_defense+(self.ev_sp_defense/4.nonzero?))*self.level/100)+5)*nature_modifier("Special Defense")).to_int
  end

  def speed_stat
    return ((((2*pokemon_specy.speed+self.iv_speed+(self.ev_speed/4.nonzero?))*self.level/100)+5)*nature_modifier("Speed")).to_int
  end

  def hp_stat
    return ((2*pokemon_specy.hp+self.iv_hp+(self.ev_hp/4.nonzero?))*self.level/100)+self.level+10
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

end
