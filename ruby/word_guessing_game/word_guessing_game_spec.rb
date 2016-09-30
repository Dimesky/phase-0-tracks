#pseudocode a class for a word-guessing game
#
#-Allow a user to enter a phrase
#-Take the phrase as an instance variable of the class
#	-Translate the word or phrase into a number of characters
#-Show the word or phrase to the user who is trying to guess as "________-___-__-_____" with each underscore signifying a letter, 
#and each dash representing a space
#-Take the number of letters within the word or phrase, divide by 3, and tell the user that they have that number of guesses to get the 
#phrase right
#-When the user enters a character
#	-Loop through the stored phrase and 
#		-If the letter exists in the phrase (and they haven't already entered it)
#		     -Provide the user with an updated visualization of the phrase with the letter included
#		-If the user has already entered the letter, ensure that this does not use up a guess
#		-Otherwise provide the user with a notice that they've used up a guess and provide the user with the previous visualization
#-If the user gets the full phrase to be uncovered within the number of guesses provided, print a congratulatory message
#	-Otherwise print a taunting message
#	

require_relative 'word_guessing_game'

describe Word_guessing_game do

	let(:word_guessing_game) { Word_guessing_game.new }
	
	it "converts a string to a number of underscores and dashes" do
		expect(word_guessing_game.convert("test string")).to eq "____ ______"
	end

	it "determines an amount of guesses to allow the user based on string size (1/2)" do
		expect(word_guessing_game.guess_amount("____ ______")).to eq 10
	end

	it "asks the user to guess a character, keeps track of the guess, removes a guess if it has not been guessed, and returns the uncovered string" do
		expect(word_guessing_game.guess_char("s", "test string", "____ ______")).to eq "__s_ s_____"
	end

	it "tells the user they won if all letters have been uncovered before guesses are up" do
		expect(word_guessing_game.won("test string", "test string", 5, 6)).to eq true
	end

end