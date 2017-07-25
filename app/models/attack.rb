class Attack < ApplicationRecord
  has_one :attack_types

  def context
    return self.name + " - Base Power " + self.base_power.to_s
  end
end
