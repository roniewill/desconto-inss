# frozen_string_literal: true

class Employee < ApplicationRecord
  validates :first_name, :last_name, :cpf, :birth_date, :phone_number_one,
            :phone_number_two, :salary, :inss, :street, :number, :neighborhood,
            :city, :state, :cep, presence: true
end
