require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../food.rb')
class CustomerTest < MiniTest::Test

def setup()
  @customer = Customer.new("Iain", 100, 30, 5)
end


def test_customer_name()
  assert_equal("Iain", @customer.name)
end

def test_customer_wallet()
  assert_equal(100, @customer.wallet)
end


def test_customer_can_buy_a_drink()
  drink = Drink.new("Whiskey", 5, 3)
  pub = Pub.new("Old Gatehouse", 200, [drink])
  @customer.buy_a_drink(pub, "Whiskey")
  assert_equal(95,@customer.wallet)
  assert_equal(205, pub.till)
  assert_equal(8, @customer.drunkenness)

end


def test_customer_age()
  assert_equal(30, @customer.age)
end


def test_customer_drunkenness()
  assert_equal(5, @customer.drunkenness)
end


def test_customer_can_buy_food()
  food = Food.new("Pizza", 7, 2)
  @customer.buy_food(food)
  assert_equal(3, @customer.drunkenness)
end












end
