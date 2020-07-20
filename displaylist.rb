require_relative 'car_class'
require_relative 'newcarform'

class DisplayList
    attr_reader :car, :title, :carlist
        def initialize(title)
            @title = title.upcase
            @car1 = Car.new
            @car2 = Car.new
            # car1.year = 2013
            # car1.make = "honda"
            # car1.model = "civic"
            # car1.mileage = 20000
            # car1.price = 13000
            # car2.year = 2020
            # car2.make = "Tesla"
            # car2.model = "Roadster"
            # car2.mileage = 25
            # car2.price = 98000
            @carlist = [car1,car2]
        end
        
        def add_car(a_car)
            @carlist.push(a_car)
        end
        
        def list_cars
        @carlist.each do |c|
        puts c
        end 
       
    
        def sell
        @carlist.pop
        end
       
        def show_inventory
            puts "#{@title} has #{@carlist.size} vehicles available:"
            list_cars
        end
end 

if __FILE__ == $0

usedcars.list_cars
# usedcars.sell
# usedcars.list_cars
puts ""
usedcars.show_inventory

end

