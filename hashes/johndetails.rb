person = {name: 'John', height: "2m", weight: "70kgs"}
puts person

person[:occupation] = "web developer"
puts person

person.delete(:weight)
puts person

puts person[:height]

for field, value in person
    puts "#{field}: #{value}"
end