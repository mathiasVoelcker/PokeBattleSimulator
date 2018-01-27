class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.belongs_to :pokemon_specy, index: true
      t.belongs_to :nature, index: true
      t.string :nickname
      t.integer :level, null: false
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :sp_attack
      t.integer :sp_defense
      t.integer :speed
      t.integer :ev_hp, null: false
      t.integer :ev_attack, null: false
      t.integer :ev_defense, null: false
      t.integer :ev_sp_attack, null: false
      t.integer :ev_sp_defense, null: false
      t.integer :ev_speed, null: false
      t.integer :iv_hp, null: false
      t.integer :iv_attack, null: false
      t.integer :iv_defense, null: false
      t.integer :iv_sp_attack, null: false
      t.integer :iv_sp_defense, null: false
      t.integer :iv_speed, null: false
      t.integer :move_1_id, index: true, optional: true
      t.integer :move_2_id, index: true, optional: true
      t.integer :move_3_id, index: true, optional: true
      t.integer :move_4_id, index: true, optional: true
    end
  end
end
