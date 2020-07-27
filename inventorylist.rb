require_relative 'car'
require_relative 'newcarform'

class InventoryList
    attr_reader :car, :title, :carlist, :sell
        def initialize(title)
            @title = title
            car1 = Car.new
            car2 = Car.new
            car1.year = 2013
            car1.make = "Honda"
            car1.model = "Civic"
            car1.mileage = 20000
            car1.price = 13000
            car2.year = 2020
            car2.make = "Tesla"
            car2.model = "Roadster"
            car2.mileage = 25
            car2.price = 98000
            @carlist = [car1, car2]
        end
        
        def add_car(a_car)
            @carlist.push(a_car)
        end
        

        def sell
            deletedcar = @carlist[@carlist.size - 1]
            @carlist.pop
            deletedcar
        end
       
        def show_inventory
            puts "#{@title} has #{@carlist.size} vehicles available:"
                @carlist.each do |c|
                  puts c
                end 
        end

end 


if __FILE__ == $0

usedcars = InventoryList.new("Used Cars")
# usedcars.list_cars
# usedcars.sell
# usedcars.list_cars
puts ""
usedcars.show_inventory

end
