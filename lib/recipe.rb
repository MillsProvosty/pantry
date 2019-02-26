class Recipe
  attr_reader :name,
              :ingredients_required
  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, quantity)
    key = ingredient
    value = quantity
    ingredient = Hash[key.zip(value)]
    @ingredients_required << ingredient
  end
end
