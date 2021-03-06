require_relative 'car'

class NewCarForm
    attr_reader :car

    def initialize
        @car = Car.new
        @car.year = ask_question("year")
        @car.make = ask_question("make").capitalize
        @car.model = ask_question("model").capitalize
        @car.body_style = ask_question("body style").capitalize
        @car.mileage = ask_question("mileage")
        @car.price = ask_question("price")
    end

    def ask_question(input)
        puts ""
        puts "What is the vehicle's #{input}?"
        gets.chomp
    end
   
end

