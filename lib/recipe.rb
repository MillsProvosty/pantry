class Recipe
  attr_reader :name,
              :ingredients_required
  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, quantity)
    ingredient.each do |ingredient|
      key = ingredient.name
      key
    end

    new_ingredient = Hash[key.zip(quantity)]
    @ingredients_required << new_ingredient
  end
end
