require_relative 'car'
require_relative 'newcarform'

class InventoryList
    attr_reader :car, :title, :carlist, :sell, :body_style
        def initialize(title)
            @title = title
            car1 = Car.new
            car2 = Car.new
            car1.year = 2013
            car1.make = "Honda"
            car1.model = "Civic"
            car1.body_style = "Sedan"
            car1.mileage = 20000
            car1.price = 13000
            car2.year = 2020
            car2.make = "Tesla"
            car2.model = "Roadster"
            car2.body_style = "Sedan"
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
            puts "#{deletedcar} has been sold."
        end
       
        def show_inventory
            puts "#{@title} has #{@carlist.size} vehicles available:"
                @carlist.each do |c|
                  puts c
                end 
        end

        def search_for
           @carlist.sort_by { |car| car.year } 
        end


end 


if __FILE__ == $0

usedcars = InventoryList.new("Used Cars")
# usedcars.list_cars
# usedcars.sell
# usedcars.list_cars
puts ""
usedcars.show_inventory
# car1.body_style
usedcars.search_for
end
