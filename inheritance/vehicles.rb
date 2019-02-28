class Vehicle
    def initialize(make, model, fuel_capacity)
        @make = make
        @model = model
        @fuel = 0
        @fuel_capacity = fuel_capacity
    end
    def fuel_level
        puts "#{@fuel}L in the tank"
    end
    def refuel(litres)
        @fuel += litres
        if @fuel > @fuel_capacity
            @fuel = @fuel_capacity
        end
    end
end

class Car < Vehicle
    def initialize(make, model)
        super(make, model, 50)
    end
    def wind_up_windows
        puts "Wound up the windows."
    end
end

class Motorbike < Vehicle
    def initialize(make, model)
        super(make, model, 15)
    end
    def wheelie
        puts "Did a sick wheelie."
    end
end

civic = Car.new("Honda", "Civic")
civic.fuel_level # -> 0L in the tank
civic.refuel(10)
civic.fuel_level # -> 10L in the tank
civic.refuel(10)
civic.fuel_level # -> 20L in the tank
civic.refuel(100)
civic.fuel_level # -> 50L in the tank`

low_rider = Motorbike.new("Harley Davidson", "Low Rider")
low_rider.refuel(99)
low_rider.fuel_level