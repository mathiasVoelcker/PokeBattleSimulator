class CreateDb < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_species do |t|
      t.string :name, null: false, index: true
      t.integer :national_numb, null: false
      t.string :url_image
      t.integer :base_hp, null: false
      t.integer :base_attack, null: false
      t.integer :base_defense, null: false
      t.integer :base_sp_attack, null: false
      t.integer :base_sp_defense, null: false
      t.integer :base_speed, null: false
      t.integer :first_type_id, index: true
      t.integer :second_type_id, index: true, optional: true
      t.timestamps
    end

    create_table :types do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :type_advantages do |t|
      t.integer :attacking_type_id, index: true
      t.integer :defending_type_id, index: true
      t.float :effect, null: false
      t.timestamps
    end

    create_table :moves do |t|
      t.string :name, null: false
      t.integer :base_power
      t.belongs_to :move_category, index: true
      t.belongs_to :type, index: true
      t.timestamps
    end

    create_table :pokemon_species_moves do |t|
      t.belongs_to :pokemon_specy, index: true
      t.belongs_to :move, index: true
      t.timestamps
    end

    create_table :move_categories do |t|
      t.string :category, null: false
      t.timestamps
    end

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

    create_table :natures do |t|
      t.string :name, null: false
      t.integer :strong_stat_id
      t.integer :weak_stat_id
      t.timestamps
    end

    create_table :stats do |t|
      t.string :name
      t.timestamps
    end
  end
end
