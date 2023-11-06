# frozen_string_literal: true

# Employees

Employee.destroy_all

salaries = [1045.00, 1045.01, 2089.60, 2089.61, 3134.40, 3134.41, 6101.06]

15.times do
  Employee.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    cpf: Faker::IDNumber.brazilian_citizen_number,
    birth_date: Faker::Date.birthday(min_age: 21, max_age: 65),
    phone_number_one: Faker::PhoneNumber.cell_phone,
    phone_number_two: Faker::PhoneNumber.cell_phone,
    salary: salaries.sample,
    inss: rand(80..300),
    street: Faker::Address.full_address,
    number: Faker::Number.number(digits: 4),
    neighborhood: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    cep: Faker::Address.zip_code
  )
end
