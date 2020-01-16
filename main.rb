require_relative "bcrypt"

# if different directory && not require_relative

# $LOAD_PATH << "."
# require "bcrypt"

users = [
  { username: "mashrur", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" }
]

new_users = Crud.create_secure_users(users)
puts new_users 

p Crud.authenticate_user("jack", "password2", new_users)