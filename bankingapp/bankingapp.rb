running = true
password = "open sesame"
logged_in = false
balance = File.readlines('balance.txt')[0].to_i
Askforinput = "What would you like to do? (options: balance, deposit, withdraw, history, exit)"
history = []

puts "Welcome to the banking app!"
puts "Please enter your password"
while not logged_in and running == true
    input = gets.chomp
    case input
    when password
        puts "Login successful."
        puts "Your balance is $#{balance}"
        logged_in = true
    when "exit"
        running = false
    else
        puts "Incorrect. Try again or type exit to quit."
    end
end


while running
    puts Askforinput
    input = gets.chomp.downcase
    case input
    when "exit"
        running = false
    when "balance"
        system "clear"
        puts "Your balance is $#{balance}"
    when "deposit"
        system "clear"
        deposit = 0
        while deposit <= 0
            puts "How much would you like to deposit? Please enter a positive number."
            deposit = gets.chomp.to_i
        end
        balance += deposit
        puts "Deposited $#{deposit}"
        history.push("Deposited $#{deposit}")
        File.open("balance.txt", "w") do |line|
            line.puts balance
        end
    when "withdraw"
        system "clear"
        withdrawal = 0
        while withdrawal <= 0
            puts "How much would you like to withdraw? Please enter a positive number."
            withdrawal = gets.chomp.to_i
        end
        if withdrawal <= balance
            balance -= withdrawal
            puts "Withdrew $#{withdrawal}"
            history.push("Withdrew $#{withdrawal}")
            File.open("balance.txt", "w") do |line|
                line.puts balance
            end
        else
            puts "Insufficient balance!"
        end
    when "history"
        system "clear"
        puts history
    else
        system "clear"
        puts "Invalid command."
    end
end
puts "Thank you, please come again!"