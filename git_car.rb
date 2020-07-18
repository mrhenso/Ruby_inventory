class Car
    attr_accessor :year, :make, :model, :mileage, :price, :title, :carlist
       
   def to_s
        puts ""
        "#{@year} #{@make} #{@model} #{@mileage} miles for $#{@price}"
    end

    
end

class NewCarForm
    attr_reader :car

    def initialize
        @car = Car.new
        @car.year = ask_question("year")
        @car.make = ask_question("make").capitalize
        @car.model = ask_question("model").capitalize
        @car.mileage = ask_question("mileage")
        @car.price = ask_question("price")
    end

    def ask_question(input)
        puts ""
        puts "What is the car's #{input}?"
        gets.chomp
    end

end

class DisplayList
attr_reader :car, :title, :carlist
    def initialize(title)
        @title = title.upcase
        car1 = Car.new
        car2 = Car.new
        car1.year = 2013
        car1.make = "honda"
        car1.model = "civic"
        car1.mileage = 20000
        car1.price = 13000
        car2.year = 2020
        car2.make = "Tesla"
        car2.model = "Roadster"
        car2.mileage = 25
        car2.price = 98000
        @carlist = [car1,car2]
        
    end
    def add_car(a_car)
        @carlist.push(a_car)
    end
    def list_cars
    @carlist.each do |c|
    puts c
    end 
    end

    def sell
    @carlist.pop
    end
   
    def show_inventory
        puts "#{@title} has #{@carlist.size} vehicles available:"
        list_cars
    end
end 

# form = NewCarForm.new
# car1 = form.car
# form2 = NewCarForm.new
# car2 = form2.car

usedcars = DisplayList.new("Used Cars")
# usedcars.add_car(car1)
# usedcars.add_car(car2)
usedcars.list_cars
# usedcars.sell
# usedcars.list_cars
puts ""
usedcars.show_inventory