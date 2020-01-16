users = [
  {username: "aaa", password: "aaa"},
  {username: "bbb", password: "bbb"},
  {username: "ccc", password: "ccc"},
  {username: "ddd", password: "ddd"},
  {username: "eee", password: "eee"}
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return ("welcome back #{user_record[:username]}")
    end
  end
  "incorrect credentials"
end

puts "welcome to the authenticator"
25.times {print "-"}
puts
puts "enter usename and password"

attempts = 1
while attempts < 4
  print "Username:"
  username = gets.chomp
  print "Password:"
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end

puts "you have exceeded the number of attempts" if attempts = 4