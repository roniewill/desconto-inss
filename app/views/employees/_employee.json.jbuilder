# frozen_string_literal: true

json.extract! employee, :id, :first_name, :last_name, :cpf, :birth_date, :phone_number_one, :phone_number_two, :salary, :inss, :street, :number, :neighborhood, :city, :state, :cep, :created_at,
              :updated_at
json.url employee_url(employee, format: :json)
