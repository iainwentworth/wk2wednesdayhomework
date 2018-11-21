class Customer
  attr_reader :name, :wallet, :age, :drunkenness

  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end



 def buy_a_drink(pub, drink)
    drink_found = pub.find_drink_by_name(drink)
    if (@wallet >= drink_found.price) && (@age >= 18) && (@drunkenness < 10)
      @wallet -= drink_found.price
      pub.till += drink_found.price
      @drunkenness += drink_found.alcohol_level

    end

 end

 def buy_food(food)
   @drunkenness -= food.rejuvenation_level
 end











end
