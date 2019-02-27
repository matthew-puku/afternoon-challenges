def factorial(n)
    if n > 0
        n += factorial(n - 1)
    end
end

puts factorial(3)