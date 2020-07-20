class Car
    attr_accessor :year, :make, :model, :mileage, :price, :title, :carlist
       
   def to_s
        puts ""
        "#{@year} #{@make} #{@model} #{@mileage} miles for $#{@price}"
    end
     
end