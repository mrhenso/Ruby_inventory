class Car
    attr_accessor :year, :make, :model, :mileage, :price, :title, :carlist, :body_style
       
   def to_s
        puts ""
        "#{@year} #{@make} #{@model} #{@body_style} #{@mileage} miles for $#{@price}"
    end
     
end