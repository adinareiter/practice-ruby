require "./module_AddStock"

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
