
class User
  attr_reader :name, :money
  def initialize(name,money)
    @name = name
    @money = money
  end
  def say_hello
    puts "Hi I am #{@name}"
  end
end

john = User.new('John', 32)
p john.age
p john.say_hello

# THESE ARE THE SAME, but you want to use class

john1 = {name: 'John', age:32}
p "say hello #{john1[:age]}"
