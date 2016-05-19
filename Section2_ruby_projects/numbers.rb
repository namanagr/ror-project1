puts 1+2
puts 20/3
puts 20.0/3
puts 20/3.to_f
puts 23.odd? # returns true if odd else returns false
puts 2.even? # returns true if even else returns false
puts 5 > 6 # returns true/false after evaluating the expression
puts "naman" == "naman123" # compares the strings
puts rand(10) # returns a ramdom number between 0 adn 10
p = 12.0
puts p.to_i
20.times {puts "Hi"} # print Hi 20 times

puts "Enter a number:"
num1 = gets.chomp
puts "Enter another number"
num2 = gets.chomp
puts "Enter multiplication result is #{num1.to_i * num2.to_i}" #Make sure that the number enter by user is treated as a string

