# var_1 = "FU"
# puts ("helen " + var_1)
# var_1 = "AAA"
# print "Hello world\" lala"
# puts ("helen " + var_1)
# flaws = nil
# test = "    hello world"
# puts test.upcase()
# puts test.strip()
# puts test.length()
# puts test.include? "world"
# puts test[10]
# num = 20.3324
# puts num.round()
# puts Math.sqrt(36)
# puts "Enter your name:"
# name = gets.chomp()
# puts "Enter your age:"
# age = gets.chomp()
# puts ("Hello " + name + ". You are " + age + " years old.")

# !!!!!!!!!! calculator !!!!!!!!!!!!
# puts "Add two numer"
# puts "Enter a number:"
# num1 = gets.chomp().to_f
# puts "Enter another number:"
# num2 = gets.chomp().to_f

# puts (num1 + num2)

# !!!!!!!!!! Array !!!!!!!!!!
# friends = Array["Aria", "Oscar", "Jane"]
# puts friends[1]
# puts friends[-1]
# puts friends [0,2]
# friends[0] = "Anne"
# puts friends
# puts friends.include? "Oscar"
# puts friends.sort()

# fruits = Array.new
# fruits[0] = "apple"
# puts fruits

#!!!!!!!!!! Hash !!!!!!!!!!
# states = {
#   :Pennsylvania => "PA",
#   "New York" => "NY",
#   "Oregon" => "OR"
# }
# puts states[:Pennsylvania]


#!!!!!!!!!! Methods !!!!!!!!!!
# def sayhi(name = "NoName")
#   puts ("Hello " + name)
# end

# sayhi("Jade")

# def cube(num)
#   return num * num * num, 70
# end

# puts cube(3)[1]

#!!!!!!!!!! Ifs !!!!!!!!!!
# ismale = true
# istall = false
# if ismale and istall
#   puts "tall guy"
# elsif ismale and !istall
#   puts "guy"
# else
#   puts "girl"
# end

# def max(num1, num2, num3)
#   if num1 >= num2 and num1 >= num3
#     return puts num1
#   else 
#     return puts "not num1"
#   end
# end

# max(4, 6, 7)

#!!!!!!!!!! calc 2 !!!!!!!!!!
# puts "Enter first num:"
# num1 = gets.chomp().to_f
# puts "Enter operator:"
# op = gets.chomp()
# puts "Enter secound num:"
# num2 = gets.chomp().to_f

# if op == "+"
#   puts (num1 + num2)
# elsif op == "-"
#   puts (num1 - num2)
# elsif op == "*"
#   puts (num1 * num2)
# elsif op == "/"
#   puts (num1 / num2)
# else
#   puts "invalid operator"
# end

#!!!!!!!!!! case experessions !!!!!!!!!!
# def get_day_name(day)
#   day_name = ""
#   case day
#   when "mon"
#     day_name="Monday"
#   when "tue"
#     day_name="Tuesday"
#   when "wed"
#     day_name="Wednesday"
#   when "thu"
#     day_name="Thursday"
#   when "fri"
#     day_name="Friday"
#   when "sat"
#     day_name="Saturday"
#   when "sun"
#     day_name="Sunday"
#   else
#     day_name="Invalid abbreviation"
#   end

#   return day_name
# end

# puts get_day_name("sun")

#!!!!!!!!!! while loops !!!!!!!!!!
# index = 1
# while index <= 5
#   puts index
#   index += 1
# end

#!!!!!!!!!! guessing game !!!!!!!!!!
# secret_word = "giraffe"
# guess = ""
# guess_count = 0
# guess_limit = 3
# out_of_guesses = false

# while guess != secret_word and !out_of_guesses
#   if guess_count < guess_limit
#     puts "Enter your guess:"
#     guess = gets.chomp()
#     guess_count += 1
#   else
#     out_of_guesses = true
#   end
# end

# if out_of_guesses
#   puts "you lose"
# else
#   puts "You won!"
# end

#!!!!!!!!!! for loop !!!!!!!!!!
# friends = ["Anne", "Jane", "Mike", "Jack", "Sherry"]

# for element in friends 
#   puts element
# end

# friends.each do |friend|
#   puts friend
# end

# for index in 0..5
#   puts index
# end

# 6.times do |index|
#   puts index
# end

# def pow(base_num, pow_num)
#   result = 1
#     pow_num.times do
#       result = result * base_num
#     end
#   return result
# end

# puts pow(5,3)

#!!!!!!!!!! Files !!!!!!!!!!
# File.open("employees.txt", "r") do |file|
#   # puts file.read().include? "Jane"
#   # puts file.readline()
#   # puts file.readlines()[2]
#   # puts file.readchar()

#   for line in file.readlines()
#     puts line
#   end
# end

# file = File.open("employees.txt", "r")
# puts file.read()
# file.close()

# File.open("employees.txt", "a") do |file|
#   file.write("\nOscar, Accounting")
# end

# File.open("index.html", "w") do |file|
#   file.write("<h1>writing from ruby</h1>")
# end

# File.open("employees.txt", "r+") do |file|
#   file.readline()
#   file.write("Hello")
# end

#!!!!!!!!!! Error !!!!!!!!!!
# begin
#   num = 10/0
#   lucky_num["dog"]
# rescue => exception
#   puts exception
# end

#!!!!!!!!!! Classes & 0bject !!!!!!!!!!
# class Book
#   attr_accessor :title, :author, :pages
#   def initialize(title, author, pages)
#     @title = title
#     @author = author
#     @oages = pages
#   end
# end

# book1 = Book.new()
# book1.title = "Harry Potter"
# book1.author = "JK Rowling"
# book1.pages = 400

# book2 = Book.new()
# book2.title = "Lord of the Rings"
# book2.author = "Tolkein"
# book2.pages = 500

# book1 = Book.new("Harry Potter", "JK Rowling", "400")

# puts book1.title

# class Student
#   attr_accessor :name, :major, :gpa
#   def initialize(name, major, gpa)
#     @name = name
#     @major = major
#     @gpa = gpa
#   end
#   def has_honors
#     if @gpa >= 3.5
#       return true
#     end
#     return false
#   end
# end

# student1 = Student.new("Jim", "Business", 2.5)
# student2= Student.new("Harry", "Art", 3.6)

# puts student2.has_honors

# class Question
#   attr_accessor :prompt, :answer
#   def initialize(prompt, answer)
#     @prompt = prompt
#     @answer = answer
#   end
# end

# p1 = "what color are apples?\n(a)red\n(b)purple\n(c)orange"
# p2 = "what color are bananas?\n(a)pink\n(b)purple\n(c)yellow"
# p3 = "what color are pears?\n(a)blue\n(b)green\n(c)orange"

# questions = [
#   Question.new(p1, "a"),
#   Question.new(p2, "c"),
#   Question.new(p3, "b")
# ]

# def run_test(questions)
#   answer = ""
#   score = 0
#   for question in questions
#     puts question.prompt
#     answer = gets.chomp()
#     if answer == question.answer
#       score += 1
#     end
#   end
#   puts ("you got #{score.to_s} out of #{questions.length().to_s}.")
# end

# run_test(questions)

#!!!!!!!!!! inheritance !!!!!!!!!!
# class Chef
#   def make_chicken
#     puts "make chicken"
#   end
#   def make_salad
#     puts "make salad"
#   end
#   def make_special_dish
#     puts "make ribs"
#   end
# end

# class ItalianChef < Chef
#   def make_pasta
#     puts "make pasta"
#   end
#   def make_spagetti
#     puts "make spagetti"
#   end
#   def make_special_dish
#     puts "make egg plant parm"
#   end
# end

# chef = Chef.new()
# chef.make_chicken

# italian_chef = ItalianChef.new()
# italian_chef.make_salad
# italian_chef.make_spagetti
# italian_chef.make_special_dish


#!!!!!!!!!! Modules !!!!!!!ç!!!
# require_relative "tools.rb"
# include Tools

# Tools.sayhi("mike")

#!!!!!!!!!! irb !!!!!!!!!!

#!!!!!!!!!! jump start lab !!!!!!!!!!
# 4.times do
#   puts "Hi"
# end

# 4.times do |i|
#   puts "#{i}) count"
# end

# 5.times{puts "Hello"}
# "lalala".gsub("la"){puts "do"}

# "this is a sentence".gsub("e"){|letter| puts letter.upcase}

# myArray = ["a", "b", "c"]
# myArray << "d"
# puts myArray.reverse

# produce = {apple: 3, orange: 4, pineapple: 2}
# puts "there are #{produce[:orange]} oranges in basket."

