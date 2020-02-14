require_relative 'menu'
require_relative 'user'
require_relative 'welcome'
# require_relative 'user'
# john = User.new('John', 32)
# p john.age
# p john.say_hello

# # THESE ARE THE SAME, but you want to use class

# john1 = {name: 'John', age:32}
# p "say hello #{john1[:age]}"


 
@main_dish_menu = [
  {item: "Hamburger", cost: 4.75},
  {item: "Burrito", cost: 3.50},
  {item: "Iris' Special", cost: 1.00},
] 

@side_dish_menu_a = [
  {item: "Mashed potatoes", cost: 2.00},
  {item: "Mac and Cheese", cost: 2.50},
  {item: "Green Goop", cost: 0.25},
]

@side_dish_menu_b = [
  {item: "Roasted Asparagus", cost: 0.75},
  {item: "Fried Rice", cost: 1.00},
  {item: "5 HR Energy", cost: 3.25},
]

@Pub_Menu = Menu.new(@main_dish_menu, @side_dish_menu_a, @side_dish_menu_b)

def lunch_lady_app
  welcome
  puts "Please tell us a your name and your balance:"
  user_input
  order_food
end


def user_input
  puts "Name:"
  @new_user = gets.chomp
  puts "Money Balance:"
  @money_balance = gets.to_i
  @starting_user = User.new(@new_user,@money_balance)
  @starting_user.say_hello
  @starting_balance = @money_balance.clone
end

def order_food
  puts "Please order from our of our menus using the menu number:
  "
  main_dish_menu_function
  end 

def main_dish_menu_function
    @Pub_Menu.list_main_menu
    index = gets.to_i
  if index == 0
    puts "
    Come again soon!

  "
    exit
  elsif @main_dish_menu[index-1][:cost] > @money_balance
    puts "
    Sorry, you don't have enough money! Try a different selection.
    "
    main_dish_menu_function
    
  else
    @money_balance = @money_balance - @main_dish_menu[index-1][:cost]
    @totalcost = @main_dish_menu[index-1][:cost]
    @main_dish_cost = @main_dish_menu[index-1][:cost]
    @main_order = @main_dish_menu[index-1][:item]
    puts "
    I think you'll love #{@main_order}, now order your first side:
    "
    side_dish_a
   end
 end 

def side_dish_a
  @Pub_Menu.list_side_menu_a
  index = gets.to_i
if  index == 0
  puts "
    Come again soon!
    
  "
  exit
elsif @side_dish_menu_a[index-1][:cost] > @money_balance
  puts "
  Sorry, you don't have enough money! Try a different selection.
  "
  side_dish_a
 
else
  @money_balance = @money_balance - @side_dish_menu_a[index-1][:cost]
    @totalcost = @totalcost + @side_dish_menu_a[index-1][:cost]
    @side_dish_a_cost = @side_dish_menu_a[index-1][:cost]
    @side_order_a = @side_dish_menu_a[index-1][:item]
    puts "
    I think you'll love #{@side_order_a}, now order your second side:
    "
    side_dish_b
end 
end

def side_dish_b
  @Pub_Menu.list_side_menu_b
  index = gets.to_i
if index == 0
  puts "
  Come again soon!
  
"
  exit
elsif @side_dish_menu_b[index-1][:cost] > @money_balance
  puts "
  Sorry, you don't have enough money! Try a different selection."
  side_dish_b
else
  @money_balance = @money_balance - @side_dish_menu_b[index-1][:cost]
  @totalcost = @totalcost + @side_dish_menu_b[index-1][:cost]
  @side_dish_b_cost = @side_dish_menu_b[index-1][:cost]
  @side_order_b = @side_dish_menu_b[index-1][:item]
  puts "
  I think you'll love #{@side_order_b}, now we'll take you to checkout.
  "
  thanks_for_shopping
end
end

def thanks_for_shopping
  puts "
  Thank you for shopping with us! Here is your receipt:
  "
  remaining_balance = @starting_balance - @totalcost
  puts "
  RECEIPT:
          Order             Cost
          #{@main_order}          $#{'%.2f' % @main_dish_cost}
          #{@side_order_a}        $#{'%.2f' % @side_dish_a_cost}
          #{@side_order_b}        $#{'%.2f' % @side_dish_b_cost}

          Your total cost for today: $#{'%.2f' % @totalcost}

          You have $#{'%.2f' % remaining_balance} remaining

          Have a good day!
          "
end

lunch_lady_app
# user_input

# @Pub_Menu.list_main_menu
# @Pub_Menu.list_side_menu_a
# @Pub_Menu.list_side_menu_b
