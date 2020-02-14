
class Menu
  attr_reader :main_dish_menu
  #  :side_dish_menu_primary :side_dish_menu_alternate
  def initialize(main_dish_menu, side_dish_menu_a, side_dish_menu_b)

    @main_dish_menu = main_dish_menu
    @side_dish_menu_a = side_dish_menu_a
    @side_dish_menu_b = side_dish_menu_b
  end
  def list_main_menu
    puts "Here is the Primary Menu:
    "
    @main_dish_menu.each do |item|
    item_index = @main_dish_menu.index(item) + 1
    puts "#{item_index}) #{item[:item]} Cost: $#{'%.2f' % item[:cost]}"
    end
  end
  def list_side_menu_a
    puts 'Here is Side Menu "A":
    '
    @side_dish_menu_a.each do |item|
    item_index = @side_dish_menu_a.index(item) + 1
    puts "#{item_index}) #{item[:item]} Cost: $#{'%.2f' % item[:cost]}"
    end
  end
  def list_side_menu_b
    puts 'Here is Side Menu "B":
    '
    @side_dish_menu_b.each do |item|
    item_index = @side_dish_menu_b.index(item) + 1
    puts "#{item_index}) #{item[:item]} Cost: $#{'%.2f' % item[:cost]}"
    end
  end
end


# @main_menu = Menu.new
# @main_menu.list_primary_menu

# def list_primary_menu 
#   puts "Here is your Primary Menu:"
#   @main_dish_menu.each do |item|
#   item_index = @main_dish_menu.index(item) + 1
#   puts "#{item_index}) #{item[:item]} Cost: #{item[:cost]}"
#   end
# end
#could use this class to add lunch items 


