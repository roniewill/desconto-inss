# frozen_string_literal: true

FactoryBot.define do
  factory :employee do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    cpf { Faker::IDNumber.brazilian_citizen_number }
    birth_date { Faker::Date.birthday(min_age: 21, max_age: 65) }
    phone_number_one { Faker::PhoneNumber.cell_phone }
    phone_number_two { Faker::PhoneNumber.cell_phone }
    salary { rand(1045..6101) }
    inss { rand(80..850) }
    street { Faker::Address.full_address }
    number { Faker::Number.number(digits: 4) }
    neighborhood { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    cep { Faker::Address.zip }
  end
end
