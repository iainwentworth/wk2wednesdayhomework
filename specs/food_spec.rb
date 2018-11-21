require('minitest/autorun')
require('minitest/rg')
require_relative('../food.rb')

class FoodTest < MiniTest::Test

  def setup()
    @food = Food.new("Pizza", 7, 2)

  end


  def test_food_name()
    assert_equal("Pizza", @food.name)
  end

  def test_food_price()
    assert_equal(7, @food.price)
  end


  def test_food_rejuvenation_level()
    assert_equal(2, @food.rejuvenation_level)
  end





end
