require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
require 'pry'

class RecipeTest < Minitest::Test
  def test_recipe_exists
    @mac_and_cheese = Recipe.new("Mac and Cheese")
    assert_instance_of Recipe, @mac_and_cheese
  end

  def setup
    @cheese = Ingredient.new("Cheese", "C", 100)
    @mac = Ingredient.new("Macaroni", "oz", 30)
    @mac_and_cheese = Recipe.new("Mac and Cheese")
  end

  def test_it_has_attributes
    assert_equal "Mac and Cheese", @mac_and_cheese.name
  end

  def test_ingredients_required_returns_empty_hash
    expected = {}
    assert_equal expected, @mac_and_cheese.ingredients_required
  end

  def test_you_can_add_ingredients_to_hash
    @mac_and_cheese.add_ingredient(@cheese, 2)
    @mac_and_cheese.add_ingredient(@mac, 8)
    expected = {@cheese => 2, @mac => 8}
    assert_equal expected, @mac_and_cheese.ingredients_required
  end

  def test_amount_required
    @mac_and_cheese.add_ingredient(@cheese, 2)
    @mac_and_cheese.add_ingredient(@mac, 8)
    assert_equal 2, @mac_and_cheese.amount_required(@cheese)
    assert_equal 8, @mac_and_cheese.amount_required(@mac)
  end

  def test_ingredients_returns_array_of_ingredients
    @mac_and_cheese.add_ingredient(@cheese, 2)
    @mac_and_cheese.add_ingredient(@mac, 8)
    assert_equal [@cheese, @mac], @mac_and_cheese.ingredients
  end



end
