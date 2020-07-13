def ask(input)
 puts "What is the #{input} of your car?"
 gets
    end

year = ask("year")
make = ask("make")
model = ask("model")
mileage = ask("mileage")
color = ask("color")
price = ask("price")
drivetrain = ask("drivetrain")
transmission = ask("transmission")

puts ""

puts "Vehicle is a #{year.chomp} #{make.capitalize.chomp} #{model.capitalize.chomp} that is #{color.chomp} in color with #{mileage.chomp} for $#{price.chomp}."