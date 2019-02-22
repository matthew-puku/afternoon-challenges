# Create an array called four_letter_animals with the following animals (in this order):
# Calf
# Duck
# Elephant
# Goat
# Lamb
# Lion
# Mule
# Dog
four_letter_animals = ["Calf","Duck","Elephant","Goat","Lamb","Lion","Mule","Dog"]
puts four_letter_animals #checking
puts "--------" #for readability

# Add Puma to the end of the array
four_letter_animals << "Puma"
puts four_letter_animals #checking
puts "--------" #for readability

# Insert Joey after Goat and before Lamb
four_letter_animals.insert(four_letter_animals.index("Lamb"), "Joey")
puts four_letter_animals #checking
puts "--------" #for readability

# Delete Dog
four_letter_animals.delete("Dog")
puts four_letter_animals #checking
puts "--------" #for readability

# Reverse the order of the array
four_letter_animals.reverse! #exclamation mark makes it permanent
puts four_letter_animals #checking
puts "--------" #for readability

# Replace Elephant with Foal
four_letter_animals[four_letter_animals.index("Elephant")] = "Foal"
puts four_letter_animals #checking
puts "--------" #for readability

# Add Bear to the end of the array
four_letter_animals << "Bear"
puts four_letter_animals #checking
puts "--------" #for readability

# Reverse the order of the array again
four_letter_animals.reverse! #exclamation mark makes it permanent
puts four_letter_animals #checking
puts "--------" #for readability