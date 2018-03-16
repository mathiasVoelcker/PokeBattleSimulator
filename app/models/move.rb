class Move < ApplicationRecord
  has_many :pokemon_species_move
  has_many :pokemon_species, :through => :pokemon_species_move
  has_one :move_category
  has_one :type

  def title
    self.name + ' - Power ' + self.base_power.to_s
  end
end
