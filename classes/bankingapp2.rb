running = true
password = "open sesame"
logged_in = false
Askforinput = "What would you like to do? (options: balance, deposit, withdraw, history, exit)"
history = []

class BankAccount
    attr_reader :username, :password
    def intialize(username, password, history)
        @username = username
        @password = password
        @history = history
        # compute balance from transaction history.
        @balance = 0
    end
    def update_balance!(amount)
        @balance += amount
        transaction_type = "null"
        if amount < 0
            transaction_type = "withdrawal"
        elsif amount > 0
            transaction_type = "deposit"
        else
        end
        # add transaction to history
    end
    def history # returns a nicely formatted string over multiple lines
        history_string = ""
        for transaction in @history do
            history_string += "#{transaction[:time]}: #{transaction[:amount]} #{transaction[:type]}."
        end
    end
end

# puts "Welcome to the banking app!"
# puts "Please enter your password"
# while not logged_in and running == true
#     input = gets.chomp
#     case input
#     when password
#         puts "Login successful."
#         puts "Your balance is $#{balance}"
#         logged_in = true
#     when "exit"
#         running = false
#     else
#         puts "Incorrect. Try again or type exit to quit."
#     end
# end


# while running
#     puts Askforinput
#     input = gets.chomp.downcase
#     case input
#     when "exit"
#         running = false
#     when "balance"
#         system "clear"
#         puts "Your balance is $#{balance}"
#     when "deposit"
#         system "clear"
#         deposit = 0
#         while deposit <= 0
#             puts "How much would you like to deposit? Please enter a positive number."
#             deposit = gets.chomp.to_i
#         end
#         balance += deposit
#         puts "Deposited $#{deposit}"
#         history.push("Deposited $#{deposit}")
#         File.open("balance.txt", "w") do |line|
#             line.puts balance
#         end
#     when "withdraw"
#         system "clear"
#         withdrawal = 0
#         while withdrawal <= 0
#             puts "How much would you like to withdraw? Please enter a positive number."
#             withdrawal = gets.chomp.to_i
#         end
#         if withdrawal <= balance
#             balance -= withdrawal
#             puts "Withdrew $#{withdrawal}"
#             history.push("Withdrew $#{withdrawal}")
#             File.open("balance.txt", "w") do |line|
#                 line.puts balance
#             end
#         else
#             puts "Insufficient balance!"
#         end
#     when "history"
#         system "clear"
#         puts history
#     else
#         system "clear"
#         puts "Invalid command."
#     end
# end
# puts "Thank you for using bankingapp2.rb!"