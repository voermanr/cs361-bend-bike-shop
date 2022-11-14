# Bike

class Bike
  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented: false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @pannier = Pannier.new(MAX_CARGO_ITEMS)
  end

  def rent!
    self.rented = true
  end

  def add_cargo(item)
    @pannier.cargo_contents << item
  end

  def remove_cargo(item)
    @pannier.cargo_contents.remove(item)
  end

  def pannier_remaining_capacity
    @pannier.pannier_remaining_capacity
  end
end

class Pannier
  attr_accessor :capacity, :cargo_contents

  def initialize(capacity)
    @capacity = capacity
    @cargo_contents = []
  end

  def pannier_remaining_capacity
    capacity - cargo_contents.size
  end
end
