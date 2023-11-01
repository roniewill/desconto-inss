# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { 'Novo' }
    last_name { 'Usuário' }
    email { 'novo@email.com' }
    password { 'password123' }
    password_confirmation { 'password123' }
  end
end
