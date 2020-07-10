# # puts "Year?"
# # input1 = gets.chomp
# # puts "Make?"
# # input2 = gets.chomp
# # puts "Model?"
# # input3 = gets.chomp
# # puts "Color?"
# # input = gets.chomp
# # puts "Doors?"
# # input4 = gets.chomp
# # puts "Price?"
# # input5 = gets.chomp
# # puts "\n\nUsed Car Inventory: \nWe have the following for sale \n\n#{input1} #{input2} #{input3} #{input4} for $#{input5}"

  


# # def info_form 
 
# #     make = gets.chomp
# #     year = gets.chomp
# #     model = gets.chomp
# #     mileage = gets.chomp
# #     price = gets.chomp
# #     "We have a #{year} #{make.capitalize} #{model.capitalize} with only #{mileage} miles for $#{price}!!!"
# # end

# # puts info_form

# def questionaire
#     puts "What Year?" 
#     year = gets.chomp
#     puts "\nMake?"
#     make = gets.chomp
#     puts "\nModel?"
#     model = gets.chomp
#     puts "\nMileage?"
#     mileage = gets.chomp
#     puts "\nPrice?"
#     price = gets.chomp
#     puts "\nYour vehicle is a #{year} #{make.capitalize} #{model.capitalize} with #{mileage} miles for $#{price}, is that right?"
    
# end
# puts questionaire
def ask(input)
 puts "What #{input.downcase} is your car?"
 gets
    end
year = ask("Year")
make = ask("Make")
model = ask("Model")
mileage = ask("Mileage")
color = ask("Color")
price = ask("Price")
puts "Vehicle is a #{year.chomp} #{make.capitalize.chomp} #{model.capitalize.chomp} that is #{color.chomp} in color with #{mileage.chomp} for $#{price.chomp}."