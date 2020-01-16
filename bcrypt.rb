# require 'bcrypt'

# users = [
#   { username: "mashrur", password: "password1" },
#   { username: "jack", password: "password2" },
#   { username: "arya", password: "password3" },
#   { username: "jonshow", password: "password4" },
#   { username: "heisenberg", password: "password5" }
# ]

# my_password = BCrypt::Password.create("my password")
# #=> "$$2a$12$29a/bYEBKbGCPEeyqoFCWuyXfLQ1E3ewlwlRqBM3SgkHQH83vLWmm"

# puts my_password
# # puts my_password.version              #=> "2a"
# # puts my_password.cost                 #=> 12
# # puts my_password == "my password"     #=> true
# # puts my_password == "not my password" #=> false

# my_password = BCrypt::Password.new("$2a$12$7lREt3N.r.Ig1Ow1W6wmzuSwbkQk7GoiwFGoIwUWFusP3laC13rOm")
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false



module Crud
  require 'bcrypt'
  puts "MODULE CRUD activated"

  # or self.create_hash_digest(pasword)
  def Crud.create_hash_digest(password)
    BCrypt::Password.create(password)
  end
  # included in class
  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end
  
  def Crud.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end
  
  def Crud.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  def Crud.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        return user_record
      end
    end
    "Incorrect credentials"
  end
end
