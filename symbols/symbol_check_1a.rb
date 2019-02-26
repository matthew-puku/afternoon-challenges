require "benchmark"
# True or false: symbols  are faster than Strings for comparisons since they are comparing object_ids?

# Generate a bunch of strings and symbols
size = 1000 # determines final size of arrays
strings = []
symbols = []
for i in 1..size do # populates arrays with strings and symbols
    string = i.to_s + "abcdef"
    strings << string
    symbols << string.to_sym
end

def spam_comparisons(array) #function that compares every item in an array to every other item in an array
    yes = 0
    no = 0
    for item in array do
        chosen_one = item
        for recurve in array do
            if chosen_one == recurve
                yes += 1
            else
                no += 1
            end
        end
    end
    return [yes, no]
end

Benchmark.bmbm do |x|
    x.report("strings:") {spam_comparisons(strings)}
    x.report("symbols:") {spam_comparisons(symbols)}
end

# Given the difference between string and symbol benchmarks, we can say that the header statement is at least HALF TRUE. However, since making each string/symbol 20000 characters long has no real effect on runtimes, it seems the second half is FALSE.