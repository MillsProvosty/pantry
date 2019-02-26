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

#honstly, I have no idea how to do this without hard coding this in there...
  def enough_ingredients_for?(recipe)
    recipe.map do |ingredients|
      if @stock.include? ingredients
        true
      else
        false
      end
    end
  end






end
