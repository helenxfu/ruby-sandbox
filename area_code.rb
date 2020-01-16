dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end
   
# Get area code based on given hash and key
def get_area_code(somehash, key)
# Write code here
  somehash[key]
end

# Execution flow

loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  lookup_area_code = gets.chomp.downcase
  break if lookup_area_code != "y"
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  city_input = gets.chomp.downcase
  if dial_book.include?(city_input)
    puts "The area code for #{city_input} is #{get_area_code(dial_book, city_input)}"
  # answer = get_area_code(dial_book, city_input) 
  # if !!answer
  #   puts "The area code for #{city_input} is #{answer}"
  else
    puts "Invalid city"
  end
end