class Car
    attr_accessor :year, :make, :model, :mileage, :price
       
       
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





form = NewCarForm.new
car = form.car
puts car

form2 = NewCarForm.new
car2 = form2.car
puts car2
