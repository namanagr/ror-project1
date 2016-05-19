require "pp" # pretty print, just styles the output
require_relative "user" # Use User class that is local to this folder

user = User.new "naman@cisco.com","Naman"
pp user # prints the object details in a readable format
user.save # Outputs the json object in the users.json file


