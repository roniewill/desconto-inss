# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.string :cpf
      t.date :birth_date
      t.string :phone_number
      t.string :contact_phone_number

      t.timestamps
    end
  end
end
