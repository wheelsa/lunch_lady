class User
  attr_reader :name, :money
  def initialize(name,money)
    @name = name
    @money = money
  end
  def say_hello
    puts "Hi, #{@name}, I'm excited to be serving you today!
    As a reminder you have $#{@money} to spend"
  end
  def money_balance
    @money
  end
end



# @current_user = User.new(new_user,money_balance)
# new_user = gets.chomp
# money_balance = gets.to_i

# @current_user.say_hello

