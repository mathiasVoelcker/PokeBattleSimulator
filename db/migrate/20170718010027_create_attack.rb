class CreateAttack < ActiveRecord::Migration[5.1]
  def change
    create_table :attacks do |t|
      t.string :name
      t.integer :base_power
      t.integer :element_id
      t.integer :attack_type_id

      t.timestamps
    end
  end
end
