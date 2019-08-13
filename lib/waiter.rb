class Waiter
    @@all = []

    attr_reader 

    def initialize(name, years_exp)
        @name = name
        @years_exp = years_exp
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select{|meal| meal.waiter == self}
    end

    def tips
        meals.map{|meal|meal.tip}
    end

    def biggest_tip
        tips.max
    end

    def best_tipper
        meals.max_by{|meal|meal.tip}.customer
    end
end