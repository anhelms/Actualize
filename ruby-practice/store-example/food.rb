require "./store_item.rb"

class Food 
include Things
    def shelf_life
        puts "Shelf life for #{@name} is 2 weeks."
    end
end
