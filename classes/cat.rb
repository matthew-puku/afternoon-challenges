# Build a Cat class.

# Each cat should have a name
# Implement a speak method to say meow.
# Add each cat's name to the speak method (Pixie says meow).

class Cat
    def initialize(name)
        @name = name
    end
    def name
        return @name
    end
    def speak
        puts "#{@name} says meow"
    end
end

felix = Cat.new("Felix")

puts felix
puts felix.name
felix.speak