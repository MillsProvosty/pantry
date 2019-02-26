class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(food)
    if @stock.include?(food)
      return food.value
    else
      return 0
    end 
  end
end
