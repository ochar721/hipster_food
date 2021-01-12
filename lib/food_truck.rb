class FoodTruck
    attr_reader :name,
                :inventory

  def initialize(name)
    @name      = name
    @inventory = {}
    @stock     = 0
    @truck_stock = 0
  end

  def stock(item, quantity)
    @inventory[item] = quantity
    @truck_stock += quantity
  end

  def check_stock(item)
    @truck_stock
  end
end
