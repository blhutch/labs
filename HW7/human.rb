class Human
  def initialize(name)
    @name = name
    @alertness = 0.0
  end

  def alertness
    @alertness 
  end

  def has_coffee?
    false
  end

  def needs_coffee?
    true
  end

  def buy(drink)
    @drink = drink
  end
  
  def drink!
  @alertness += 0.33
  @drink.change_fullness
  end  

end