# frozen_string_literal: true

# USERS
users = [
  { first_name: 'Main User', last_name: 'First', email: 'user@email.com', password: 'pass12' },
  { first_name: 'Second User', last_name: 'Secondary', email: 'second@email.com', password: 'pass12' }
]

User.destroy_all

users.each do |user|
  puts "Creating user #{user[:first_name]}"
  User.create!(first_name: user[:first_name], last_name: user[:last_name], email: user[:email], password: user[:password], password_confirmation: user[:password])
end
