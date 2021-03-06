grocery_list = []
items_to_add = 3

puts "Welcome to shopping list!"

items_to_add.times do
    # two step process to store a list item as an array with the name and quantity of the item.
    puts "Enter item name"
    name = gets.chomp
    if name.downcase == "ice cream" # convert ice cream to broccoli if necessary. Not very robust because i'm not your mother
        name = "broccoli"
    end

    puts "Now enter a quantity!"
    quantity = gets.chomp
    grocery_list << [name, quantity]
    system("clear")
    puts "Added #{quantity} #{name} to your shopping list."
end

system("clear")

# drills down into each array and sorts them by their first values (e.g "bread").
# uses .downcase because otherwise CAPITAL LETTERS sort before lowercase.
grocery_list.sort! { |item1,item2| item1[0].downcase <=> item2[0].downcase}

puts "Alright, your list has #{grocery_list.length} items."
for item in grocery_list
    puts "#{item[1]} #{item[0]}"
end

puts "Happy shopping!"