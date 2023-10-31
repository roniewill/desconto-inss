# frozen_string_literal: true

# USERS
users = [
  { first_name: 'Major User', last_name: 'First', email: 'admin@email.com', password: 'pass12', role: 2 },
  { first_name: 'Second User', last_name: 'Secondary', email: 'second@email.com', password: 'pass12', role: 0 }
]

User.destroy_all

users.each do |user|
  puts "Creating user #{user[:first_name]}"
  User.create!(first_name: user[:first_name], last_name: user[:last_name], email: user[:email], password: user[:password], password_confirmation: user[:password], role: user[:role])
end
