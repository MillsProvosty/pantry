require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
require './lib/pantry'
require 'pry'

class PantryTest < Minitest::Test
  def test_recipe_exists
     @pantry = Pantry.new
    assert_instance_of Pantry, @pantry
  end

  def setup
    @pantry = Pantry.new
    @cheese = Ingredient.new("Cheese", "C", 50)
    @mac = Ingredient.new("Macaroni", "oz", 200)
    @mac_and_cheese = Recipe.new("Mac and Cheese")
  end

  def test_stock_returns_empty_hash
    expected = {}
    assert_equal expected, @pantry.stock
  end

  def test_stock_check_returns_quantity
    assert_equal 0, @pantry.stock_check(@cheese)
  end
end
