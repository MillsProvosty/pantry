class Recipe
  attr_reader :name,
              :ingredients_required
  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, quantity)
    @ingredients_required[ingredient] = quantity
  end

  def amount_required(ingredient_object)
    @ingredients_required.map do |object, quantity|
      if object == ingredient_object
        return quantity
      end
    end
  end

  def ingredients
    @ingredients_required.map do |object, quantity|
      object
    end
  end


end
