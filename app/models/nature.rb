class Nature < ApplicationRecord
  has_many :pokemons
  belongs_to :strong_stat, foreign_key: 'strong_stat_id', :class_name => "Stat"
  belongs_to :weak_stat, foreign_key: 'weak_stat_id', :class_name => "Stat"

  def nature_string()
    puts name_string 'Attack'
    if self.strong_stat != nil
      return self.name + " (strong: " + name_string(self.strong_stat.name.capitalize) + ", weakness: "  + name_string(self.weak_stat.name.capitalize) + ") "
    end
    self.name
  end

  def name_string name
    if name.include? 'Sp_'
      name.gsub! 'Sp_', 'Special '
    end
    name
  end

end
