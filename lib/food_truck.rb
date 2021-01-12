class FoodTruck
    attr_reader :name,
                :inventory

  def initialize(name)
    @name      = name
    @inventory = {}
    @stock     = 0
  end

  def stock(item, quantity)
    @inventory[item] = quantity
  end

  def check_stock(quantity)
    @inventory.values.sum
  end
end
