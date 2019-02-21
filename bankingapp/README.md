Challenge description: build a banking app.

The initial balance should be 0. Show this on screen when the app runs. E.g:
Your balance is $0

Use puts to display a nice welcome message. E.g:
Welcome to the banking app
Your balance is $0

Let the user determine the output. Ask them what they would like to do. If they type balance and hit return, show them their balance! Currently the only option is balance. E.g:
Welcome to the banking app
What would you like to do? (options: balance)
*user types balance*
Your balance is $0

If the user types anything other than balance, say "Invalid selection!"
Welcome to the banking app
What would you like to do? (options: balance)
*user types kanye*
Invalid selection!

Ask the user for a password before proceeding.

Beast Mode++
Add 'deposit' as an option. If they select it, ask 'how much would you like to deposit?'. Update the balance and show it back to the user.
Wrap the program in a loop so the user can view balance and then deposit over and over.
The screen's looking pretty ugly, figure out how to clear the screen between loops.
Implement a withdraw feature. Make sure they can't withdraw more than their total balance.
Research arrays. Store each transaction in an array and then implement a 'history' option.
Restarting the app sets the balance to $0. Research reading/writing files. Store the balance in a text file so it persists.
Research hashes. Store multiple user balances and histories in a hash.
