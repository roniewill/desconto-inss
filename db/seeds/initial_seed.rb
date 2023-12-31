# frozen_string_literal: true

# USERS
users = [
  { first_name: 'Administrador', last_name: 'master', email: 'admin@email.com', password: 'pass12', admin: true },
  { first_name: 'Usuário', last_name: 'Comun', email: 'second@email.com', password: 'pass12', admin: false }
]

User.destroy_all

users.each do |user|
  puts "Creating user #{user[:first_name]}"
  User.create!(first_name: user[:first_name], last_name: user[:last_name], email: user[:email], password: user[:password], password_confirmation: user[:password], admin: user[:admin])
end
