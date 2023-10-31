# frozen_string_literal: true

FactoryBot.define do
  factory :employee do
    fisrt_name { 'MyString' }
    last_name { 'MyString' }
    cpf { 'MyString' }
    birth_date { '2023-10-31' }
    phone_one { 'MyString' }
    phone_two { 'MyString' }
    salary { '9.99' }
    inss { '9.99' }
    street { 'MyString' }
    number { 'MyString' }
    neighborhood { 'MyString' }
    city { 'MyString' }
    state { 'MyString' }
    cep { 'MyString' }
  end
end
