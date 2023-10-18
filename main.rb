item1 = Item.new("binder", 551, 12.50)
item2 = Item.new("notebook", 32, 4.39)
item3 = Item.new("pen packages", 103, 8.99)
food = Food.new("cookies", 10, 5.49)

pp item1, item2, item3, food

item2 = 31
pp item2

item3.add_stock
