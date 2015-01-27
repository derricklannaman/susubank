# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150127025812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_codes", force: true do |t|
    t.string   "access_code"
    t.integer  "program_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "access_codes", ["program_id"], name: "index_access_codes_on_program_id", using: :btree
  add_index "access_codes", ["user_id"], name: "index_access_codes_on_user_id", using: :btree

  create_table "accounts", force: true do |t|
    t.decimal  "balance",    default: 0.0
    t.integer  "user_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["player_id"], name: "index_accounts_on_player_id", using: :btree
  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id", using: :btree

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact1s", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dashboards", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dashboards", ["user_id"], name: "index_dashboards_on_user_id", using: :btree

  create_table "destinations", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "destination_image_file_name"
    t.string   "destination_image_content_type"
    t.integer  "destination_image_file_size"
    t.datetime "destination_image_updated_at"
  end

  create_table "devise_practice_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "devise_practice_users", ["email"], name: "index_devise_practice_users_on_email", unique: true, using: :btree
  add_index "devise_practice_users", ["reset_password_token"], name: "index_devise_practice_users_on_reset_password_token", unique: true, using: :btree

  create_table "divisions", force: true do |t|
    t.string   "name"
    t.string   "age_group"
    t.integer  "program_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "weight_class"
  end

  add_index "divisions", ["program_id"], name: "index_divisions_on_program_id", using: :btree

  create_table "line_items", force: true do |t|
    t.integer  "meal_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meals", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "destination_id"
  end

  add_index "meals", ["destination_id"], name: "index_meals_on_destination_id", using: :btree

  create_table "opponents", force: true do |t|
    t.integer  "program_id"
    t.integer  "team_id"
    t.string   "name"
    t.text     "notes"
    t.string   "division"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street"
    t.string   "town"
    t.string   "zip"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "state"
  end

  add_index "opponents", ["program_id"], name: "index_opponents_on_program_id", using: :btree
  add_index "opponents", ["team_id"], name: "index_opponents_on_team_id", using: :btree

  create_table "players", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "town"
    t.string   "zip"
    t.integer  "dob"
    t.integer  "team_id"
    t.integer  "parent_id"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "date_of_birth"
    t.boolean  "is_registered",       default: false
    t.integer  "program_id"
  end

  add_index "players", ["program_id"], name: "index_players_on_program_id", using: :btree
  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree

  create_table "programs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "league_name"
    t.string   "town_name"
    t.string   "team_name"
    t.string   "logo_image_file_name"
    t.string   "logo_image_content_type"
    t.integer  "logo_image_file_size"
    t.datetime "logo_image_updated_at"
    t.decimal  "fee",                     precision: 30, scale: 2, default: 0.0
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "schedules", force: true do |t|
    t.date     "date"
    t.time     "time"
    t.string   "entry_type"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "opponent_id"
  end

  add_index "schedules", ["opponent_id"], name: "index_schedules_on_opponent_id", using: :btree
  add_index "schedules", ["team_id"], name: "index_schedules_on_team_id", using: :btree

  create_table "susu_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "susu_users", ["email"], name: "index_susu_users_on_email", unique: true, using: :btree
  add_index "susu_users", ["reset_password_token"], name: "index_susu_users_on_reset_password_token", unique: true, using: :btree

  create_table "teams", force: true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "age_group"
    t.integer  "num_of_players"
    t.boolean  "active",         default: false
    t.integer  "program_id"
    t.integer  "division_id"
    t.integer  "head_coach"
  end

  add_index "teams", ["division_id"], name: "index_teams_on_division_id", using: :btree
  add_index "teams", ["head_coach"], name: "index_teams_on_head_coach", using: :btree
  add_index "teams", ["program_id"], name: "index_teams_on_program_id", using: :btree
  add_index "teams", ["user_id"], name: "index_teams_on_user_id", using: :btree

  create_table "transactions", force: true do |t|
    t.decimal  "payment",        precision: 30, scale: 2, default: 0.0
    t.decimal  "account_credit", precision: 30, scale: 2, default: 0.0
    t.integer  "user_id"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transactions", ["account_id"], name: "index_transactions_on_account_id", using: :btree
  add_index "transactions", ["user_id"], name: "index_transactions_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "user_type"
    t.integer  "program_id"
    t.boolean  "hasActiveAccount",       default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["program_id"], name: "index_users_on_program_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "websites", force: true do |t|
    t.string   "program_url"
    t.integer  "program_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "town"
    t.string   "team"
    t.string   "slug"
  end

  add_index "websites", ["program_id"], name: "index_websites_on_program_id", using: :btree

end
