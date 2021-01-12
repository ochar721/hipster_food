require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'


class ItemTest < Minitest::Test

  def test_is_exists_has_atributes
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    assert_instance_of Item, item1
    assert_equal 'Apple Pie (Slice)', item2.name
    assert_equal 2.50, item2.price
  end
end
