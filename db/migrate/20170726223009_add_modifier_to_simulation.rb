class AddModifierToSimulation < ActiveRecord::Migration[5.1]
  def change
    add_column :simulations, :modifier, :float
  end
end
