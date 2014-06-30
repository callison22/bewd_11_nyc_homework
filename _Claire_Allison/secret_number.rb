###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 

puts "Welcome to the secret number game! This ultra-fun game was created by Claire"

#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"

def get_input
	#Get input from the user.
  return gets.chomp
end


puts "What is your name?" 
user_name = get_input
puts "Hi #{user_name}!"

#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.

number = 8
max_attempts = 3

puts "It's time to play. Here are the rules: your task is to guess my secret number which is between 1 and 10 in #{max_attempts} guesses"

#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.

attempts = 1

# creating a loop to repeat the below code 
loop do 
	puts "Guess number #{attempts}. Make your guess"
	guess = gets.to_i
	# using the to_i method to make sure the value is an integer	
	

#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.	
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
	
	if guess < number
		then puts "Too low. You have #{(max_attempts - attempts)} guesses left"
	elsif guess > number
		then puts "Too high"
	else 
		#this would mean the guess was right
		puts "You got it!! You won the game"
	break	
	end	
	attempts += 1


#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
if attempts > max_attempts
	puts "You have exceeded the number of guesses - you lost and the game is over =( My secret number was #{number}"
	break	
	attempts += 1


end	

end
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

