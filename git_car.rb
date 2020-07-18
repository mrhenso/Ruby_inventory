require_relative 'displaylist_class'




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