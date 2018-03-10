class CreateNatures < ActiveRecord::Migration[5.1]
  def change
    create_table :natures do |t|
      t.string :name, null: false
      t.integer :strong_stat_id
      t.integer :weak_stat_id

      t.timestamps
    end
  end
end
