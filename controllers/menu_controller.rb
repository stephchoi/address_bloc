require_relative '../models/address_book'

class MenuController
    attr_reader :address_book
   
    def initialization
        @address_book = AddressBook.new
    end
    
    def main_menu
        puts "Main Menu - #{address_book.entries.count}" 
        puts "1 - View all entries"
        puts "2 - Create an entry"
        puts "3 - Search for an entry"
        puts "4 - Import entries from a CSV"
        puts "5 - Exit"
        print "Enter your selection: "
        
        selection = gets.to_i
        puts "You picked #{selection}"
    end
end