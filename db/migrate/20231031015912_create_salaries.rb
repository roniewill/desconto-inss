# frozen_string_literal: true

class CreateSalaries < ActiveRecord::Migration[7.0]
  def change
    create_table :salaries do |t|
      t.decimal :value
      t.decimal :inss
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
