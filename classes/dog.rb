class Dog
    def initialize(name, age, location)
        @name = name
        @age = age
        @location = location
        @times_walked = 0
        @walks = []
    end
    def location
        return @location
    end
    def walk(location, distance)
        @times_walked += 1
        @location = location
        @walks << {:id => @times_walked, :time => Time.now, :location => location, :distance => distance}
        return self
    end
    def total_distance
        total = 0
        for walk in @walks do
            total += walk[:distance]
        end
        return total
    end
    def display_walks
        puts "I, #{@name}, have been walked #{@times_walked} times, for a total of #{total_distance}km."
        for walk in @walks do # construct and put an informative string for each walk the dog has taken.
            puts "#{walk[:id]}: On #{walk[:time].strftime("%-d %b %Y at %I:%M%P")} I walked #{walk[:distance]}km in #{walk[:location]}."
        end
        return self
    end
end

doggo = Dog.new('Rover', 2, 'Brisbane')
doggo.walk('Sydney', 20)
doggo.walk('Milan', 50)
doggo.walk('Gladstone', 5)
doggo.display_walks