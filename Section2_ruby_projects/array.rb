a = [4,7,3,6, "Naman", [3,4,5],78]
puts a[4];
puts a[5];
puts a.empty? # Checks if the array is nil
puts a.include?("Naman") # Checks if "Naman" is there in the array
puts a.reverse # Prints the array in reverse order
a.reverse! # Puts the array in reverse order and save the changes. "!" means then.
a.shuffle! # Puts the array elements in a random order
b = (0..25).to_a # Creates an array of elements from 0 to 25
b = (0..25).to_a.shuffle!
c = [1,2,3,4]
c << 5 # Adds an element to the array at the end
c.push(6) # Adds an element to the array at the end
c.unshift("Naman") # Adds an element to the beginning of the array
c.pop() # Deletes an element from the end of the array
c << 5 << 5
puts c.uniq # Displays the unique elements in the array
c.uniq! # Removes duplicate elements from the array
puts "Pritning the elements of array C"
c.each {|i| puts i} # Used to interate through the array.
for number in c # Conventional way of using for loop
  puts number
end
names = ["joe","john","james"]
names.each do |food| # food acts as the iterative variable
  puts "Hello #{food.capitalize}" # Makes the first character print in upper case. 
end
names.each { |food| puts "Hello #{food.capitalize}" } # Another way of using it
y = (0..99).to_a
y.select! { |number| number.odd? }# selects all odd numbers from the array
puts y
p = ["my","name","is","Naman"]
puts p.join
puts p.join(" ")