beethoven = { "name" => "Ludwig van Beethoven", "year_born" => 1770, "year_died" => 1827 }    
kant = { "name" => "Immanuel Kant", "year_born" => 1724, "year_died" => 1804 }
brown = { "name" => "Violet Brown", "year_born" => 1900, "year_died" => 2017 }
morano = { "name" => "Emma Morano", "year_born" => 1899, "year_died" => 2016 }

def get_age(person)
    age = person["year_died"] - person["year_born"]
    return age
end

def older(person1, person2)
    if get_age(person1) > get_age(person2)
        return "#{person1["name"]} grew older than #{person2["name"]}!"
    elsif get_age(person1) < get_age(person2)
        return "#{person2["name"]} grew older than #{person1["name"]}!"
    else
        return "#{person1["name"]} and #{person2["name"]} had the same number of birthdays."
    end
end

puts older(beethoven, kant)
puts older(kant, brown)
puts older(brown, morano)