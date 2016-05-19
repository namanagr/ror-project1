class User
  def initialize(name="Cheetah") # constructor variable that is implicitely called when an object is instatiated.
    @name = name # @variable exists till the object exists.
  end
  def get_name()
    @name
  end
  def set_name=(name)
    @name = name
  end
end

user = User.new("Naman") # Creating an object of the class User.
puts user.get_name
user.set_name = "Agrawal"
puts user.get_name

class NewUser
  attr_accessor :name, :email # Gives my class getter and setter methods for the variable name
  def initialize(name="New Cheetah",email)
    @name = name
    @email = email
  end
end

newuser = NewUser.new("John","john@cisco.com")
puts newuser.name
newuser.name="Naman"
puts newuser.name
puts newuser.email

