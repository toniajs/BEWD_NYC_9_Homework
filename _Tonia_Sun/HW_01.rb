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
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

# Introduction
puts "Welcome to the Secret Number Game! Created by Tonia Sun"

puts "What is your name?"
player_name = gets.chomp

puts "Hi #{player_name}!"
puts "To play this game, you must guess a number between 1 and 10, and you will have 3 tries to do so. If you're ready, we'll start now."
puts "#{player_name}, what is your guess?"

# Define secret number
$randnum = 5

# Takes player input and tells player if guess is too high or too low, or if guess was correct
def guess(guesses, randnum)
	player_guess = gets.to_i
	randnum = $randnum

	if player_guess == randnum
		abort("You win! Congratulations")
	elsif player_guess > randnum
		puts "Your guess was too high. You have #{guesses} guesses before the game is over. Please enter another number."
	elsif player_guess < randnum
		puts "Your guess was too low. You have #{guesses} guesses before the game is over. Please enter another number."
	end
end

# Calls guess method to give player 3 tries to guess the right number
guesses = 2
while guesses > -1
	guess(guesses, $randnum)
	guesses -=1
end

# Game end if player does not guess correctly in 3 guesses
puts "Sorry #{player_name}, you have 0 guesses left. The secret number was #{$randnum}. You've lost and the game is over."