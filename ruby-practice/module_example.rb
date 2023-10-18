module Transportation
    def brake
        @speed = 0
    end
    
    def accelerate
        @speed += 10
    end
    
    def turn(new_direction)
        @direction = new_direction
    end
end

class Car
include Transportation
    def initialize
        @speed = 0
        @direction = 'north'    
        @fuel = 'gas'
        @make = 'volkswagen'
        @model = 'golf'
    end
    def honk_horn
      puts "Beeeeeeep!"
    end
    def fuel
        puts @fuel
    end
end
  
class Bike
include Transportation
    def initialize
        @speed = 0
        @direction = 'north' 
        @weight = '10 lbs'
        @type = 'mountain'
    end
    def ring_bell
      puts "Ring ring!"
    end
    def weight
        puts @weight
    end
end


bicycle = Bike.new
bicycle.ring_bell
bicycle.weight
puts bicycle.accelerate
puts bicycle.turn('right')


car = Car.new
car.honk_horn
car.fuel
puts car.accelerate

