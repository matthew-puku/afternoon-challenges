# Write a program to list all prime numbers between 1 and 100:

for number in 1..100
    count = 1
    factors = 0
    while count < number
        if number % count == 0
            factors += 1
        end
        count += 1
    end
    if factors == 1
        puts number
    end
end