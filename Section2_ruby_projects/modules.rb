# A module is similar to a class but it is basically a collection of behaviours that other classes can use via mixing. 
# We have to include the module in a class that we want to use. 
# However, we cannot have an object of a module.
# A module has to be mixed in into a class and then we can use the methods of the module.

module Destructable # Creating a module
  def destroy(object)
    puts "I will destroy this object"
  end
end

class User
  include Destructable # including the module into the class so that the destroy method becomes accessible via User class which otherwise cannot be accessed directly.
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

user = User.new("Naman","naman@cisco.com")
user.destroy("hehe")

