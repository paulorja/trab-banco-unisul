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

ActiveRecord::Schema.define(version: 20161201015344) do

  create_table "account_operations", force: :cascade do |t|
    t.integer  "account_id", limit: 4
    t.integer  "person_id",  limit: 4
    t.float    "amount",     limit: 24
    t.integer  "tipo",       limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "account_operations", ["account_id"], name: "index_account_operations_on_account_id", using: :btree
  add_index "account_operations", ["person_id"], name: "index_account_operations_on_person_id", using: :btree

  create_table "accounts", force: :cascade do |t|
    t.integer  "tipo",              limit: 4
    t.integer  "agency_id",         limit: 4
    t.integer  "person_id",         limit: 4
    t.float    "saldo",             limit: 24, default: 0.0
    t.float    "limite_cheque_esp", limit: 24
    t.datetime "deleted_at"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "accounts", ["agency_id"], name: "index_accounts_on_agency_id", using: :btree
  add_index "accounts", ["person_id"], name: "index_accounts_on_person_id", using: :btree

  create_table "addresses", force: :cascade do |t|
    t.string   "cep",        limit: 255
    t.string   "rua",        limit: 255
    t.string   "cidade",     limit: 255
    t.string   "uf",         limit: 255
    t.string   "numero",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "agencies", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.integer  "numero",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "legal_people", force: :cascade do |t|
    t.string   "cnpj",       limit: 255
    t.string   "nome",       limit: 255
    t.integer  "person_id",  limit: 4
    t.integer  "address_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "legal_people", ["address_id"], name: "index_legal_people_on_address_id", using: :btree
  add_index "legal_people", ["person_id"], name: "index_legal_people_on_person_id", using: :btree

  create_table "managers", force: :cascade do |t|
    t.string   "login",      limit: 255
    t.string   "senha",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "partners", force: :cascade do |t|
    t.integer  "person_id",  limit: 4
    t.integer  "account_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "partners", ["account_id"], name: "index_partners_on_account_id", using: :btree
  add_index "partners", ["person_id"], name: "index_partners_on_person_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.integer  "tipo",       limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "physical_people", force: :cascade do |t|
    t.string   "cpf",        limit: 255
    t.string   "nome",       limit: 255
    t.date     "nascimento"
    t.integer  "person_id",  limit: 4
    t.integer  "address_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "physical_people", ["address_id"], name: "index_physical_people_on_address_id", using: :btree
  add_index "physical_people", ["person_id"], name: "index_physical_people_on_person_id", using: :btree

  add_foreign_key "account_operations", "accounts"
  add_foreign_key "account_operations", "people"
  add_foreign_key "accounts", "agencies"
  add_foreign_key "accounts", "people"
  add_foreign_key "legal_people", "addresses"
  add_foreign_key "legal_people", "people"
  add_foreign_key "partners", "accounts"
  add_foreign_key "partners", "people"
  add_foreign_key "physical_people", "addresses"
  add_foreign_key "physical_people", "people"
end
