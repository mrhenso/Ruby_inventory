def ask(input)
 puts "What the #{input.downcase} of your car?"
 gets
    end
year = ask("Year")
make = ask("Make")
model = ask("Model")
mileage = ask("Mileage")
color = ask("Color")
price = ask("Price")
puts ""
puts "Vehicle is a #{year.chomp} #{make.capitalize.chomp} #{model.capitalize.chomp} that is #{color.chomp} in color with #{mileage.chomp} for $#{price.chomp}."