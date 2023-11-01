# frozen_string_literal: true

FactoryBot.define do
  factory :employee do
    first_name { 'Fulano' }
    last_name { 'Moroeira' }
    cpf { '38290322003' }
    birth_date { '2000-10-31' }
    phone_number_one { '7199898-9898' }
    phone_number_two { '9199898-9898' }
    salary { '3000' }
    inss { '281,62' }
    street { 'Travessa Capitão Francisco Ferreira' }
    number { '22' }
    neighborhood { 'Mecejana' }
    city { 'Boa Vista' }
    state { 'RR' }
    cep { '69304-610' }
  end
end
