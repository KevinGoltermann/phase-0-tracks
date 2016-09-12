=begin
#-----------Pseudocode----------#
-Take word input from user one
	-stores word input so it be guessed
-Start guess counter
	-counter can be set to amount relative to word length
-Takes character guessed as input
	-compares character guessed to original word input
-If there is match, update secret word with matching character
	-update guess counter
-If there is no match, display message and loop back
	-update guess counter
-If word is eventually guessed, "Congrats"
-If guesses run out, "Good try"
=end

#--------Class declaration---------#
class Game

	attr_reader :past_guesses, :guess_counter, :guess_amount, :guessing_word

	def initialize(word)
		@final_word = word
		@guess_counter = 0
		@guessing_word = ''
		@guess_amount = 2 * word.length
		@past_guesses = ""
		word.length.times {guessing_word << "*"}
	end

	def winner
		if @final_word == guessing_word
			return true
		else
			return false
		end
	end

	def match(character)
		@guess_counter += 1
		past_guesses << character
		if @final_word.include?(character)
			guess_index = 0
			@final_word.each_char do |guess|
				@guessing_word[guess_index] = guess if guess == character
				guess_index += 1
		end
			return true
		else
			return false
		end
	end

end

#-----------Driver code---------#
puts "Please enter the word you would like to be guessed:"
word = gets.chomp.downcase
game = Game.new(word)
puts game.guessing_word

while game.guess_counter < game.guess_amount
	
	puts "Enter your guess:"
	character = gets.chomp.downcase
	if character.length != 1
		puts "Please enter one character at a time."
		next
	end

	if game.past_guesses.include?(character)
		puts "#{character} has already been guessed!"
		next
	end

	puts game.match(character) ? "It's a match" : "Try again!"

	puts game.guessing_word

	break if game.winner
	puts "#{game.guess_amount - game.guess_counter} guesses left"

end

puts game.winner ? "Congrats!" : "Good Try!"

