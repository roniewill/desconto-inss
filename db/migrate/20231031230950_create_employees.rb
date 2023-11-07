# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false, default: ''
      t.string :cpf, null: false
      t.date :birth_date, null: false
      t.string :phone_number_one, null: false
      t.string :phone_number_two, null: false, default: ''
      t.decimal :salary, null: false, precision: 10, scale: 2, default: 0.00
      t.decimal :inss, null: false, precision: 10, scale: 2, default: 0.00
      t.string :street, null: false
      t.string :number, null: false, default: 'no number'
      t.string :neighborhood, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :cep, null: false

      t.timestamps
    end

    add_index :employees, :cpf,                             unique: true
    add_index :employees, :phone_number_one,                unique: true
  end
end
