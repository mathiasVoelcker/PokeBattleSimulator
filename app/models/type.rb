class Type < ApplicationRecord
  has_many :pokemon_species
  has_many :type_advantages, :foreign_key => :attacking_type
  has_many :defending_types, :through => :type_advantages, :source => :defending_type
end
