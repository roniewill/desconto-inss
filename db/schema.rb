# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_231_031_020_257) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'addresses', force: :cascade do |t|
    t.string 'street'
    t.string 'number'
    t.string 'neighborhood'
    t.string 'city'
    t.string 'state'
    t.string 'cep'
    t.bigint 'employee_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['employee_id'], name: 'index_addresses_on_employee_id'
  end

  create_table 'employees', force: :cascade do |t|
    t.string 'full_name'
    t.string 'cpf'
    t.date 'birth_date'
    t.string 'phone_number'
    t.string 'contact_phone_number'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'salaries', force: :cascade do |t|
    t.decimal 'value'
    t.decimal 'inss'
    t.bigint 'employee_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['employee_id'], name: 'index_salaries_on_employee_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'first_name', default: '', null: false
    t.string 'last_name', default: '', null: false
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'role', default: 0
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'addresses', 'employees'
  add_foreign_key 'salaries', 'employees'
end
