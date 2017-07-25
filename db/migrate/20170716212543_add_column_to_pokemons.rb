class AddColumnToPokemons < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :nature_id, :integer
    remove_column :pokemons, :nature, :string
  end
end
