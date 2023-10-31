# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :fisrt_name
      t.string :last_name
      t.string :cpf
      t.date :birth_date
      t.string :phone_number_one
      t.string :phone_number_two
      t.decimal :salary
      t.decimal :inss
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :cep

      t.timestamps
    end

    add_index :employees, :cpf,                             unique: true
    add_index :employees, :phone_number_one,                unique: true
  end
end
