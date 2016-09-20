#Creates a spy name using the spy's real name
#
#1. Ask the spy for their name
#2. Swap the spy's first and last names
#3. Change the vowels in the name to the next vowel in 'aeiou' and all consonants
#   to the next consonant in the alphabet


def request_name
	puts "Please enter your name as long as you AREN't a spy ;) : "
	spy_name = gets.chomp
end

def swap_names(name)
	name.split{' '}.reverse!
end

swap_names(request_name)