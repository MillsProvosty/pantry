class Recipe
  attr_reader :name,
              :ingredients_required
  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, quantity)
    new_ingredient = Hash.new
    new_ingredient[ingredient] = quantity
    @ingredients_required << new_ingredient
  end
end
