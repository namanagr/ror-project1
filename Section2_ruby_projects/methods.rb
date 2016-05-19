def add(num1,num2)
  num1.to_f + num2.to_f # In Ruby, the return keyword is implies if it is the only statement or if it is the last statement of a method 
end

def subtract(num1,num2)
  num1.to_f - num2.to_f 
end

def multiply(num1,num2)
  num1.to_f * num2.to_f 
end

def divide(num1,num2)
  num1.to_f / num2.to_f
end

puts "What do you want to do ? 1) Add 2) Subtract 3) Multiply 4) Divide ?"
prompt = gets.chomp
puts "Enter number 1"
num1 = gets.chomp
puts "Enter number 2"
num2 = gets.chomp

if prompt == "1"
  puts "performing Addition.."
  result = add(num1,num2)
elsif prompt == "2"
  puts "performing Subtraction.."
  result = subtract(num1,num2)
elsif prompt == "3"
  puts "performing Multiplication.."
  result = multiply(num1,num2)
elsif prompt == "4"
  puts "performing Division.."
  result = divide(num1,num2)
else
  puts "invalid choice"
end

puts "The result is #{result}"
