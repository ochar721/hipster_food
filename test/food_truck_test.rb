require 'minitest/autorun'
require 'minitest/pride'
require './lib/food_truck'


class FoodTruckTest < Minitest::Test
  def test_it_exists_and_has_attributes
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    assert_instance_of FoodTruck, food_truck
    assert_equal "Rocky Mountain Pies", food_truck.name
  end
end


#  food_truck.inventory
# #=> {}
#
#  food_truck.check_stock(item1)
# #=> 0
#
#  food_truck.stock(item1, 30)
#
#  food_truck.inventory
# #=> {#<Item:0x007f9c56740d48...> => 30}
#
#  food_truck.check_stock(item1)
# #=> 30
#
#  food_truck.stock(item1, 25)
#
#  food_truck.check_stock(item1)
# #=> 55
#
# pry(main)> food_truck.stock(item2, 12)
#
# pry(main)> food_truck.inventory
# #=> {#<Item:0x007f9c56740d48...> => 55, #<Item:0x007f9c565c0ce8...> => 12}
