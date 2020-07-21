# show_inventory = require_relative 'displaylist'
# add_car = require_relative 'newcarform'
# sell_car = 'display list - #{@car}'
# search = search engine(dup newcarform to make)
require_relative 'format_module'
require_relative 'newcarform'
require_relative 'inventorylist'
require_relative 'car'

class Menu
    

    def initialize
        @title = "Welcome To Matt's Car Lot!!!"
        @options = ["1. Add Car", "2. Sell Car", "3. Show Inventory", "4. Search", "5. Exit"]
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

    def select_option
        input = gets.chomp
        case input
        when "1"
           form = NewCarForm.new
            puts ""
            puts "You've added a #{form.car}. Is that right?[Yes or No]"
            confirm = gets.chomp.downcase
            if confirm == "yes"
                puts "Thank you for that information! What would you like to do next?"
                display_menu
            elsif confirm == "no"
                puts "No car was added to the directory. Redirecting to main menu."
                display_menu
            else 
                puts "Not a valid entry, please enter Yes or No."
                reconfirm = gets.chomp.downcase
            end
        
        when "3"
            puts ""
            DisplayList.new("Used Car Inventory")
        when "5"
        exit
        end
    
    # end
    # when 4
    # input[4]
    # end

    display_menu
        
    end

end



menu = Menu.new