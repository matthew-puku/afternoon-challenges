require "time"

cohort = [{:name => "Matthew", :birthday => "1992-08-19"}, {:name => "Glen", :birthday => "1990-03-23"}]
me = cohort[0]

def difference_in_days(date1, date2)
    difference = Time.parse(date1).to_i - Time.parse(date2).to_i
    return (difference / 60 / 60 / 24).abs
end

puts difference_in_days(cohort[0][:birthday],cohort[1][:birthday])

puts "Please enter a classmate"
input = gets.chomp.capitalize
classmate = ""
for person in cohort
    if person[:name] == input
        classmate = person
    end
end

if classmate == ""
    puts "No person found"
else
    puts "Classmate found: #{classmate}"
    puts "Difference in days: #{difference_in_days(me[:birthday], classmate[:birthday])}"
end