class CreateTableNature < ActiveRecord::Migration[5.1]
  def change
    create_table :natures do |t|
      t.string :name
      t.string :advantage
      t.string :disadvantage
      t.timestamps
    end
  end
end
