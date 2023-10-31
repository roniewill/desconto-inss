# frozen_string_literal: true

json.extract! employee, :id, :fisrt_name, :last_name, :cpf, :birth_date, :phone_one, :phone_two, :salary, :inss, :street, :number, :neighborhood, :city, :state, :cep, :created_at, :updated_at
json.url employee_url(employee, format: :json)
