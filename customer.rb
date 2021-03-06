class Customer

  attr_reader :name, :age, :wallet, :stomach, :drunkness

  def initialize(name, age, wallet)
    @name = name
    @age = age
    @wallet = wallet
    @stomach = []
    @drunkness = 0
  end

  def buy_drink(drink_price)
    if @age >= 18
      @wallet -= drink_price
    elsif @age < 18 && drink_price == 2
      @wallet -= drink_price
    else
     return
    end
  end

  def consume_drink(drink)
    if @age >= 18
      @stomach.push(drink)
    elsif @age < 18 && drink == 2
      @stomach.push(drink)
    else
     return
    end
  end

  def age_over_18(age)
    return true if age >= 18
    return false if age < 18
  end

  def getting_drunk(alocohol)
    @drunkness +=alocohol
  end

  def refuse_to_serve
    return true if @drunkness >= 50
  end

  def buy_food(food_price)
      @wallet -= food_price
  end

  def consume_food(food)
      @stomach.push(food)
  end

  def food_rejuvenation_reduce_drunkness(rejuvenation)
    @drunkness -= rejuvenation
  end

end
