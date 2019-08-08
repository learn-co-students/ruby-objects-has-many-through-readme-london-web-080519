class Meal
    attr_accessor :waiter, :customer, :total, :tip 
    @@all = []
    def initialize(waiter,customer,total,tip)
        @waiter = waiter
        @customer = customer 
        @total = total 
        @tip = tip 
        @@all << self 
    end 

    def self.all 
        return @@all 
    end 

    def self.customer 
        return @customer 
    end

    def self.waiter 
        return @waiter 
    end

    def self.total 
        return total 
    end

    def self.tip 
        return @tip 
    end 
    


end