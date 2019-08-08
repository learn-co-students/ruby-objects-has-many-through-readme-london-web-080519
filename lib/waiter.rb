class Waiter
attr_reader :name, :experience

@@all = []
def initialize(name, experience)
    @name = name 
    @experience = experience 
    @@all << self
end 

def self.all
    return @@all
end

def new_meal(waiter=self,customer,total,tip)
    meal = Meal.new(waiter,customer,total,tip)
end 

def meals 
    Meal.all.select {|meal|meal.waiter == self}
end

def best_tipper 
  best_tipped_meal = Meal.all.max_by {|meal|meal.tip}
  best_tipped_meal.customer
end 
end 
