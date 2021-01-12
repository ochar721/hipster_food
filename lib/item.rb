class Item
  attr_reader :name,
              :price

  def initialize(data)
    @name  = data[:name]
    @price = data[:price]

  end

  def price
    @price.to_s.gsub(/[$,]/,'').to_f
  end

  def check_stock(item)
    @inventory.values.sum
  end
end
