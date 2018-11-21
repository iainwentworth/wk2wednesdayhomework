require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
class PubTest < MiniTest::Test

  def setup()
    drink1 = Drink.new("Martini", 4)
    drink2 = Drink.new("Whiskey", 5)
    drink3 = Drink.new("Mojito", 7)
    drinks = [drink1, drink2, drink3]

    @pub = Pub.new("Old Gatehouse", 100, drinks )


  end

  def test_pub_name()
    assert_equal("Old Gatehouse", @pub.name)
  end


  def test_pub_till()
    assert_equal(100, @pub.till)
  end


  def test_pub_drinks()
    assert_equal(3, @pub.count_drinks)
  end

  def test_find_drink_by_name()
    drink = @pub.find_drink_by_name("Whiskey")
    assert_equal("Whiskey", drink.name)
  end














end
