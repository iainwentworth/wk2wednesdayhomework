class Pub
  attr_reader :name
  attr_accessor :till

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks

  end


  def count_drinks()
    @drinks.count
  end


  def find_drink_by_name(drink_to_find)
    for drink in @drinks
      if (drink.name == drink_to_find)
        return drink
      end
    end
    return nil
  end











end
