class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(food)
      @stock.sum do |item, quantity|
        if item == food
          quantity
        end
      end
  end

  def restock(food, quantity)
    @stock[food] += quantity
  end




end
