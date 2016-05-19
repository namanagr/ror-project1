class User
  attr_accessor :name, :email # Gives my class getter and setter methods for the variable name
  def initialize(name="New Cheetah",email)
    @name = name
    @email = email
  end
  def run
    puts "I'm running.."
  end
  def self.identify_yourself
    puts "Hey! I am a class method."
  end
end

class Buyer < User # Defining class "Buyer" inheriting class "User"
  def run
    puts "I'm not running as I'm in the buyer class."
  end
end

class Seller < User
end

class Admin < User
end

buyer = Buyer.new("Naman","naman@cisco.com")
buyer.run 
seller = Seller.new("Seller","seller@cisco.com")
seller.run
admin1 = Admin.new("Admin1","admin1@cisco.com")
admin1.run

puts Buyer.ancestors # Will show the class "User" as its immediate ancestor

User.identify_yourself # A class method is a method on the class that can be called directly without instantiating any object. 


