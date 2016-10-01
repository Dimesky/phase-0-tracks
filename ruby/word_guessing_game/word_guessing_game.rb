class Word_guessing_game

	attr_reader :hidden_phrase, :total_guesses_available
	attr_accessor :actual_phrase, :guess_count, :guess_array

	def initialize
		@hidden_phrase = ''
		@actual_phrase = ''
		@guess_count = 0
		@total_guesses_available = 0
		@guess_array = []
	end

	def convert(word_or_phrase)
		@hidden_phrase = []
		word_or_phrase.downcase.split('').each do |character|
			if character == ' '
				@hidden_phrase << ' '
			else
				@hidden_phrase << '_'
			end
		end
		@hidden_phrase = @hidden_phrase.join
		return @hidden_phrase
	end

	def guess_amount(obfuscated_phrase)
		obfuscated_phrase.split('').each do |character|
			if character == '_'
				@total_guesses_available += 1
			end
		end
		return @total_guesses_available
	end

	def guess_char(character, stored_phrase, obfuscated_phrase)
		@guess_array.each do |char|
			if char == character
				@guess_count -= 1
				break
			end
		end
		@guess_array << character
		index = 0
		stored_phrase.split('').each do |letter|
			if character == letter 
				obfuscated_phrase[index] = character
			end
			index += 1
		end
		@guess_count += 1
		@hidden_phrase = obfuscated_phrase
		return @hidden_phrase
	end

	def won(stored_phrase, obfuscated_phrase, guess_amount, number_of_guesses)
		@guess_count = guess_amount
		@total_guesses_available = number_of_guesses
		if stored_phrase == obfuscated_phrase
			return true
		else
			return false
		end
	end

end

game = Word_guessing_game.new

puts "Welcome to the word guessing game!"
puts "Please enter a word or phrase for the second player to guess: "

hidden = game.convert(game.actual_phrase = gets.chomp)

100.times {|star| puts "* * * * *"}

puts "Hello second player, do not scroll up!"

puts "The word or phrase to guess: #{hidden}"

total_guesses = game.guess_amount(hidden)

while !game.won(game.actual_phrase, game.hidden_phrase, game.guess_count, total_guesses)
	puts "Please guess a character in the phrase (you have #{game.total_guesses_available} guesses): "
	char_guess = gets.chomp
	puts game.guess_char(char_guess, game.actual_phrase, hidden)
	puts "Number of guesses so far: #{game.guess_count}"
	if game.guess_count >= game.total_guesses_available
		puts "Sorry, you are really horrible at this."
		break
	end
end

if game.guess_count < game.total_guesses_available
	puts "OMG, you win!"
end
