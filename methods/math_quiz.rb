looping = true
prng = Random.new

def generate_problem(operation) # Generates a math problem and its answer, stored in a hash. Passing a 0 generates an addition problem, 1 subtraction, and 2 multiplication. You can also pass a string.
    prng = Random.new
    factor1 = prng.rand(1..100)
    factor2 = prng.rand(1..100)
    problem = {}
    case operation
    when 0, "addition"
        prompt = "What's #{factor1} + #{factor2}?"
        answer = factor1 + factor2
        problem = {:prompt => prompt, :answer => answer}
    when 1, "subtraction"
        prompt = "What's #{factor1} - #{factor2}?"
        answer = factor1 - factor2
        problem = {:prompt => prompt, :answer => answer}
    when 2, "multiplication"
        prompt = "What's #{factor1} * #{factor2}?"
        answer = factor1 * factor2
        problem = {:prompt => prompt, :answer => answer}
    else # bad inputs raise exception with informative message
        raise(ArgumentError, "Expected 0, 1, 2, 'addition', 'subtraction', or 'multiplication'. Actual: #{operation}")
    end
    return problem
end

puts "Welcome to math_quiz.rb! Answer problems or type quit to exit."
while looping
    question = generate_problem(prng.rand(3))
    puts question[:prompt]
    input = gets.chomp.downcase
    case input
    when "exit", "quit", "e", "q", "ZZ", "end", "done", "stop"
        looping = false
    else
        if input.to_i == question[:answer]
            puts "Correct!"
        else
            puts "Wrong!"
        end
    end
end
puts "Ciao!"