require 'minitest/autorun'
require 'minitest/pride'
require './lib/food_truck'
require './lib/item'


class FoodTruckTest < Minitest::Test
  def test_it_exists_and_has_attributes
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    assert_instance_of FoodTruck, food_truck
    assert_equal "Rocky Mountain Pies", food_truck.name
  end

  def test_food_truck_inventory_starts_empty_and_stock_at_zero
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    assert_equal ({}), food_truck.inventory
    assert_equal 0, food_truck.check_stock(item1)
  end

  def test_it_can_add_stock
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    food_truck.stock(item1, 30)

    assert_equal ({item1 => 30}), food_truck.inventory
    assert_equal 30,  food_truck.check_stock(item1)

    food_truck.stock(item1, 25)

    assert_equal 55, food_truck.check_stock(item1)

    food_truck.stock(item2, 12)
    expected = {item1 => 55, item2 => 12}

    assert_equal expected, food_truck.inventory
  end
end
