require "./store_item.rb"
require "./food.rb"

item1 = Items.new("hats", "purple", 30.00, "small")
item2 = Items.new("hats", "blue", 35.00, "large")
item1.print_info
item2.print_info
item1.sale

food1 = Food.new("apple", "green", 3.00, "small")
food2 = Food.new("apple", "red", 3.00, "large")
food1.print_info
food2.print_info
food1.shelf_life
food1.shelf_life