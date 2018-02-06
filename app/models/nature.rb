class Nature < ApplicationRecord
  has_many :pokemons
  belongs_to :strong_stat, foreign_key: 'strong_stat_id', :class_name => "Stat"
  belongs_to :weak_stat, foreign_key: 'weak_stat_id', :class_name => "Stat"

  def nature_string()
    if self.strong_stat != nil
      return self.name + " (strong: " + self.strong_stat.name.capitalize + ", weakness:"  + self.weak_stat.name.capitalize + ") "
    end
    self.name
  end
end
