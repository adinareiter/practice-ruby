require "./class_item.rb"
require "./module_AddStock.rb"

class Food < Item
  def initialize(input_name, input_stock, input_price)
    super
    @shelf_life = "3 months"
  end
end
