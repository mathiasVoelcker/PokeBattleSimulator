class CreateNatureAndStats < ActiveRecord::Migration[5.1]
  def change
    create_table :natures do |t|
      t.string :name
      t.string :strong_stat_id
      t.string :weak_stat_id
      t.timestamps
    end

    create_table :stats do |t|
      t.string :name
      t.timestamps
    end
  end
end
