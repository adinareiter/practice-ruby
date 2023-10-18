# # JS style syntax
# item1 = {
#   name: "binder",
#   color: "blue",
#   quantity: 1,
#   price: 12.99,
# }

# item2 = {
#   name: "notebook",
#   color: "pink",
#   quantity: 3,
#   price: 5.50,
# }

# item3 = {
#   name: "pens",
#   color: "red",
#   quantity: 10,
#   price: 8.99,
# }

# # Ruby style syntax
# item_a = {
#   :name => "binder",
#   :color => "blue",
#   :quantity => 1,
#   :price => 12.99,
# }

# item_b = {
#   :name => "notebook",
#   :color => "pink",
#   :quantity => 3,
#   :price => 5.50,
# }

# item_c = {
#   :name => "pens",
#   :color => "red",
#   :quantity => 10,
#   :price => 8.99,
# }

# puts "A #{item1[:name]} is #{item1[:price]}"
# puts "A #{item2[:name]} is #{item2[:price]}"
# puts "A #{item3[:name]} is #{item3[:price]}"
module AddStock
  def add_stock
    puts @stock + 1
  end
end

class Item
  include AddStock
  attr_reader :name, :price
  attr_writer :stock

  def initialize(input_name, input_stock, input_price)
    @name = input_name
    @stock = input_stock
    @price = input_price
  end
end

class Food < Item
  def initialize(input_name, input_stock, input_price)
    super
    @shelf_life = "3 months"
  end
end

item1 = Item.new("binder", 551, 12.50)
item2 = Item.new("notebook", 32, 4.39)
item3 = Item.new("pen packages", 103, 8.99)
food = Food.new("cookies", 10, 5.49)

pp item1, item2, item3, food

item2 = 31
pp item2

item3.add_stock
