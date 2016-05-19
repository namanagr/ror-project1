# Hash -> Exists in a key value pair
my_details = {"name" => "Naman", "favcolor" => "blue"} # Declaring a hash "Name" => "Naman" is called a hash rocket
puts my_details["favcolor"] # Fetching data value of a hash key
myhash = {a: 1, b: 2, c: 3}
puts myhash[:c]
myhash[:d] = 7 # Add a key,value pair to the hash
puts myhash
myhash.delete(:d) # Delete a key,value pair from the hash
puts myhash
numbers = {a:1, b:2, c:3, d:4, e:5, f:10}
puts numbers
numbers.each {|k,v| puts v}  # {k,v} specify the key,value pair
numbers.each {|k,v| puts "The key is #{k} and the value is #{v}"}
numbers = numbers.each {|k,v| numbers.delete(k) if v > 3} # Delete the key,value pairs where the value > 3
puts numbers
numbers = {a:1, b:2, c:3, d:4, e:5, f:10}
puts numbers.select {|k,v| v.odd?} # Selects the numbers that are odd


