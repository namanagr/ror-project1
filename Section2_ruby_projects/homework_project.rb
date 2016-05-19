dial_book = {
  "Jaipur"=>"302",
  "Delhi"=>"345",
  "Mumbai"=>"134",
  "Vellore"=>"632",
  "Bangalore"=>"560",
  "Pune"=>"456"
}

# method to display city names
def get_city_names(somehash)
  somehash.each { |city, area_code| puts city }
end

# method to get area code, dial_book and the city name
def get_area_code(somehash, key)
  somehash[key]
end

loop do
  puts "Do you want to lookup an area code based on the  city name?(Y/N) "
  answer = gets.chomp
  if answer != "Y"
    break
  end
  puts "Choose the city from the list below -"
  get_city_names(dial_book)
  puts "Enter your selection?"
  prompt = gets.chomp
  if dial_book.include?(prompt)
    puts "The area code of the city #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "You entered a city name not in the dictionary."
  end
end