class Customer
  attr_reader :name, :age

  @@all = []
  def initialize(name,age)
    @name = name 
    @age = age 
    @@all << self 
  end 

  def self.all
    return @@all 
  end 

  def new_meal(waiter,customer=self,total,tip)
    meal = Meal.new(waiter,customer,total,tip)
  end 

  def meals 
    Meal.all.select {|meal| meal.customer == self }
  end

  def waiters
    meals.map do |meal|
        meal.waiter 
    end

  end 

end