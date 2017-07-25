class CreateTableAttack < ActiveRecord::Migration[5.1]
  def change
    create_table :attacks do |t|
      t.string :name
      t.integer :base_power
      t.string :element
      t.string :type

      t.timestamps
    end
  end
end
