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

ActiveRecord::Schema.define(version: 20170726223009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attack_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attacks", force: :cascade do |t|
    t.string "name"
    t.integer "base_power"
    t.integer "element_id"
    t.integer "attack_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elements", force: :cascade do |t|
    t.string "name"
    t.float "strengths", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "natures", force: :cascade do |t|
    t.string "name"
    t.string "advantage"
    t.string "disadvantage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_species", force: :cascade do |t|
    t.string "name"
    t.integer "hp"
    t.integer "attack"
    t.integer "defense"
    t.integer "sp_attack"
    t.integer "sp_defense"
    t.integer "speed"
    t.string "first_element"
    t.string "second_element"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer "pokemon_species_id"
    t.integer "level"
    t.string "nickname"
    t.integer "iv_attack"
    t.integer "iv_defense"
    t.integer "iv_sp_attack"
    t.integer "iv_sp_defense"
    t.integer "iv_speed"
    t.integer "iv_hp"
    t.integer "ev_attack"
    t.integer "ev_defense"
    t.integer "ev_sp_attack"
    t.integer "ev_sp_defense"
    t.integer "ev_speed"
    t.integer "ev_hp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nature_id"
  end

  create_table "simulations", force: :cascade do |t|
    t.integer "attacking_pokemon_id"
    t.integer "attack_id"
    t.integer "defending_pokemon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "modifier"
  end

end
