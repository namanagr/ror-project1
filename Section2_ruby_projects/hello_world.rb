puts "hello world!"

hello = "hello world using string variable!"
puts hello

def hello_method
 puts "hello world called using a method!"
end

hello_method

def hello_method_args(anything)
  puts anything
end

hello_method_args("Hello World!! My name is Naman!")

puts "Naman" + " " + "Agrawal"

first_name = "Computer"
last_name = "Science"

puts first_name.class # Will display the datatype
puts first_name + last_name
first_name.methods # Lists all the methods available for this string variable
puts "My name is #{first_name}" # String interpolation. P.S. It does not work with single quotes. 
puts "Hey Chris. John said \"How are you doing?\"" # '\' is the escape character
first_name.length #return the length of the string
first_name.nil? #returns true if the string is nil else returns false

puts "Please enter your mom's name:"
moms_name = gets.chomp # inputs data from the user
puts "We welcome your mom #{moms_name} to the world of ruby!"
puts "The reverse name of your mom is #{moms_name.reverse}"



