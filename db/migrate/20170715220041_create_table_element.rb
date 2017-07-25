class CreateTableElement < ActiveRecord::Migration[5.1]
  def change
    create_table :elements do |t|
      t.string :name
      t.float :strengths, array: true

      t.timestamps
    end
  end
end
