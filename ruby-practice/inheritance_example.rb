class Transportation
    def initialize
        @speed = 0
        @direction = 'north'
    end
    
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

class Car < Transportation
    def initialize 
        super
        @fuel = 'gas'
        @make = 'volkswagen'
        @model = 'golf'
    end
    def fuel
        puts @fuel
    end
    def honk_horn
      puts "Beeeeeeep!"
    end
end
  
class Bike < Transportation
    def initialize
        super
        @type = 'mountain'
        @weight = '10 lbs'
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

