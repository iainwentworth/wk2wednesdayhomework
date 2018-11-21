require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class DrinkTest < MiniTest::Test

  def setup()
    @drink = Drink.new("Martini", 4, 2)
  end

  def test_drink_name()
    assert_equal("Martini", @drink.name)
  end


  def test_drink_price()
    assert_equal(4, @drink.price)
  end


  def test_for_alcohol_level()
    assert_equal(2, @drink.alcohol_level)
  end



end
