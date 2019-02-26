# When the user launches the game, she is being greeted.
# Next, the program poses a simple maths question (e.g. “What’s 26 * 4?”). The two numbers are chosen randomly from the range 1 to 100. The operation is also chosen randomly. It’s either addition, subtraction or multiplication.
# The user can then enter their answer.
# The game checks the answer and responds with either “Correct!” or “Wrong!”.
# The game loops until the user enters “quit”.
# At first, the task to implement something like that may seem daunting. As always, try to think about the smallest thing you can program which will get you closer to your goal. Do that, check that it’s working and then move on with the next tiny step.

looping = true
prng = Random.new

def generate_problem(operation) # Generates a math problem and its answer, stored in a hash. Passing a 0 generates an addition problem, 1 subtraction, and 2 multiplication.
    prng = Random.new
    case operation
    when 0
        factor1 = prng.rand(1..100)
        factor2 = prng.rand(1..100)
        problem = "What's #{factor1} + #{factor2}?"
        answer = factor1 + factor2
        return {:problem => problem, :answer => answer}
    when 1
        factor1 = prng.rand(1..100)
        factor2 = prng.rand(1..100)
        problem = "What's #{factor1} - #{factor2}?"
        answer = factor1 - factor2
        return {:problem => problem, :answer => answer}
    when 2
        factor1 = prng.rand(1..100)
        factor2 = prng.rand(1..100)
        problem = "What's #{factor1} * #{factor2}?"
        answer = factor1 * factor2
        return {:problem => problem, :answer => answer}
    end
end

puts "Welcome to math_quiz.rb! Answer problems or type quit to exit."
while looping
    question = generate_problem(prng.rand(3))
    puts question[:problem]
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