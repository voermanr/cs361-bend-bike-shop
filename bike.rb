# Bike
require_relative 'luggage'

class Bike
  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :weight, :luggage

  def initialize(id, color, price, luggage)
    @id = id
    @color = color
    @price = price
    @weight = STANDARD_WEIGHT
    @luggage = luggage
  end

  def price
    @price + 2 * (@weight + luggage.weight)
  end

  def net_weight
    @weight + luggage.weight
  end
end
