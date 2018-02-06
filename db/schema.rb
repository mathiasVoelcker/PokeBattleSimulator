# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180204222844) do

  create_table "move_categories", force: :cascade do |t|
    t.string "category", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moves", force: :cascade do |t|
    t.string "name", null: false
    t.integer "base_power"
    t.integer "move_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["move_category_id"], name: "index_moves_on_move_category_id"
  end

  create_table "natures", force: :cascade do |t|
    t.string "name", null: false
    t.integer "strong_stat_id"
    t.integer "weak_stat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_species", force: :cascade do |t|
    t.string "name", null: false
    t.integer "national_numb", null: false
    t.string "url_image"
    t.integer "base_hp", null: false
    t.integer "base_attack", null: false
    t.integer "base_defense", null: false
    t.integer "base_sp_attack", null: false
    t.integer "base_sp_defense", null: false
    t.integer "base_speed", null: false
    t.integer "first_type_id"
    t.integer "second_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_type_id"], name: "index_pokemon_species_on_first_type_id"
    t.index ["name"], name: "index_pokemon_species_on_name"
    t.index ["second_type_id"], name: "index_pokemon_species_on_second_type_id"
  end

  create_table "pokemon_species_moves", force: :cascade do |t|
    t.integer "pokemon_specy_id"
    t.integer "move_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["move_id"], name: "index_pokemon_species_moves_on_move_id"
    t.index ["pokemon_specy_id"], name: "index_pokemon_species_moves_on_pokemon_specy_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer "pokemon_specy_id"
    t.integer "nature_id"
    t.string "nickname"
    t.integer "level", null: false
    t.integer "hp"
    t.integer "attack"
    t.integer "defense"
    t.integer "sp_attack"
    t.integer "sp_defense"
    t.integer "speed"
    t.integer "ev_hp", null: false
    t.integer "ev_attack", null: false
    t.integer "ev_defense", null: false
    t.integer "ev_sp_attack", null: false
    t.integer "ev_sp_defense", null: false
    t.integer "ev_speed", null: false
    t.integer "iv_hp", null: false
    t.integer "iv_attack", null: false
    t.integer "iv_defense", null: false
    t.integer "iv_sp_attack", null: false
    t.integer "iv_sp_defense", null: false
    t.integer "iv_speed", null: false
    t.integer "move_1_id"
    t.integer "move_2_id"
    t.integer "move_3_id"
    t.integer "move_4_id"
    t.index ["move_1_id"], name: "index_pokemons_on_move_1_id"
    t.index ["move_2_id"], name: "index_pokemons_on_move_2_id"
    t.index ["move_3_id"], name: "index_pokemons_on_move_3_id"
    t.index ["move_4_id"], name: "index_pokemons_on_move_4_id"
    t.index ["nature_id"], name: "index_pokemons_on_nature_id"
    t.index ["pokemon_specy_id"], name: "index_pokemons_on_pokemon_specy_id"
  end

  create_table "stats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_advantages", force: :cascade do |t|
    t.integer "attacking_type_id"
    t.integer "defending_type_id"
    t.float "effect", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attacking_type_id"], name: "index_type_advantages_on_attacking_type_id"
    t.index ["defending_type_id"], name: "index_type_advantages_on_defending_type_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
