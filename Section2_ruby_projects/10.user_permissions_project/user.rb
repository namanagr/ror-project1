require "json"

class User
  attr_accessor :email, :name, :permissions # Since we have to deal with email, name and permissions
  
  def initialize(*args) # *args accepts the arguments as they come in and creates an array of them
    @email = args[0]
    @name = args[1]
    @permissions = User.permissions_from_template
  end
  
  def self.permissions_from_template
    file = File.read "user_permissions_template.json"
    JSON.load(file, nil, symbolize_name: true)
  end
  
  def save
    self_json = {"name":@name, "email":@email, "permissions":@permissions}.to_json
    open('users.json', 'a') do |file|
      file.puts self_json
    end
  end
end