

# sell_car = 'display list - #{@car}'
# search = search engine(dup newcarform to make)
require_relative 'format_module'
require_relative 'newcarform'
require_relative 'inventorylist'
require_relative 'car'

class Menu
    

    def initialize
        @title = "Welcome To Matt's Car Lot!!!"
        @options = ["1. Show Inventory", "2. Add Vehicle", "3. Sell Vehicle", "4. Search", "5. Exit"]
        @inventorylist = InventoryList.new("Used Cars")
        intro
        prompt
        display_menu
    end
    
    def intro
        Format.line_spacing(3)
        puts @title.center(160)
        Format.line_spacing
    end
    
    def prompt
        puts "Please select one of the following options:".center(160)
        Format.line_spacing(1)
    end

    def display_menu
        @options.each do|c|
            puts c.ljust(20,).center(160)
        end    
        select_option
    end

    def confirm_input(car)
        @car = car
        
        puts "--You've added a #{car}. Is that right?[Yes or No]"
        puts ""
        input = gets.chomp.downcase
        puts ""
        if input == "yes"
           @inventorylist.add_car(car)
                puts "--Thank you for that information! What would you like to do next?"
                Format.line_spacing(4)
                prompt
                display_menu
        elsif input == "no"
                puts "--No car was added to the directory. Redirecting to main menu."
                Format.line_spacing(4)
                prompt
                display_menu
        else 
                puts "--Not a valid entry, please enter Yes or No."
                Format.line_spacing(4)
                puts confirm_input(car)    
        end
    end    

 
    def select_option
        input = gets.chomp
        case input
        when "1"
            puts ""
            @inventorylist.show_inventory
            prompt
           
        when "2"
            form = NewCarForm.new
            confirm_input(form.car)
            
        when "3"
            deletedcar = @inventorylist.sell
            puts deletedcar
            prompt
           
        when "4"
            puts ""
            puts "What are you looking for?"
            input = gets.chomp
            @inventorylist.search_for
        
        when "5"
            exit
        else 
            puts ""
            puts "--Not a valid entry"
            intro
            prompt
        end
    
    # end
    # when 4
    # input[4]
    # end

    display_menu
        
    end

end
