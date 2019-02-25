require 'json' #derulo

items = JSON.parse(File.read("items.txt"), {:symbolize_names => true})
looping = true

def to_currency(number) #converts a Numeric to a currency string
    number = number.to_f.round(2) #force number to have a decimal point, if it doesn't already. If it does, rounds it to two places
    number = number.to_s #turning number into a string allows hacky coercion
    if number[number.index(".") + 2] == nil #checks whether there is a 2nd number after the decimal point
        number.concat("0") #if not, append a zero.
    end
    number = "$#{number}" #prepends a dollar sign.
    return number
end

while looping
    puts "Press 1 to add items, press 2 to work out a total, or press 3 to exit"
    input = gets.chomp.downcase
    system "clear"
    case input
    when "1" #three step process for user to add invoices
        puts "Who ordered the item?"
        customer = gets.chomp.capitalize

        puts "What did #{customer} order?"
        item = gets.chomp.capitalize

        awaiting_valid_input = true #checks user input makes sense, if not, ask until it is.
        while awaiting_valid_input
            puts "How much did #{item} cost?"
            cost = gets.chomp.downcase
            if cost.to_f == 0 
                puts "Invalid input. Please try again."
            else
                awaiting_valid_input = false
            end
        end
       
        puts "Ok, #{customer} ordered #{item} for #{to_currency(cost)}."
        items << {:customer => customer, :item => item, :cost => cost.to_f} #stores all user inputs in a hash and adds the hash to the main array
        File.open("items.txt","w") do |file| #save our progress to disk
            file.write items.to_json
        end
    when "2" #totals a bill for a given customer
        customer_list = []
        for invoice in items
            customer_list << invoice[:customer]
        end
        puts "Enter a customer's name\nCustomers are:"
        puts customer_list.uniq
        customer = gets.chomp.capitalize #convert user input to a format the program understands
        #finds invoices which match entered customer and adds up their bill
        amount_owed = 0.0
        for invoice in items
            if invoice[:customer] == customer
                amount_owed += invoice[:cost]
            end
        end
        if amount_owed == 0.0
            puts "No bill found for #{customer}"
        else
            puts "#{customer} owes #{to_currency(amount_owed)}"
        end
    when "3", "exit", "quit", "ZZ", "e" #ends loop
        looping = false
    when "4", "reset" #reset array to defaults
        items = [{ customer: "John", item: "Soup", cost: 8.50}, {customer: "Sarah", item: "Pasta", cost: 12}, {customer: "John", item: "Coke", cost: 2.50}]
        File.open("items.txt","w") do |file|
            file.write items.to_json
        end
        puts "Reset items to default"
    else
        puts "Invalid command."
    end
end