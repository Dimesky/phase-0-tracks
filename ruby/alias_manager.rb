#Creates a spy name using the spy's real name
#
#1. Ask the spy for their name
#2. Swap the spy's first and last names
#3. Change the vowels in the name to the next vowel in 'aeiou' and all consonants
#   to the next consonant in the alphabet

def request_name
	spy_name = ''
	until spy_name == 'quit'
		puts "Please enter your name as long as you AREN't a spy ;) - otherwise type 'quit': "
		spy_name = gets.chomp.downcase   #returning user input
		if spy_name == 'quit'
			puts "Thank you for coming. Goodbye."
		elsif spy_name == '' || !spy_name.include?(" ")
			puts "Please enter a valid name"
		else
			p next_letter(swap_names(spy_name))
		end
	end
end

def swap_names(name)
	new_name = name.split(' ').reverse
	last_name_length = new_name[0].length
	name_info = [new_name, last_name_length] #returning reverse of first and last name and an the length of the first name
end

def next_letter(name)
	new_name = []                          #initialize new array to hold new name
	novowels = 'bcdfghjklmnpqrstvwxyz'	   #define alphabet without vowels
	vowels = 'aeiou'					   #define vowels only
	name[0] = name[0].join.split('')								#take first array value from passed in parameter and turn it into array of letters
	name[0].each do |char|											#loop through each character
		if vowels.include?(char)									#if it includes a vowel,
			new_name.push(vowels[vowels.index(char) + 1])			#take the index of that character within the vowels string and add 1 to that index, while pushing that new letter back into the new array
		else														#if not,
			new_name.push(novowels[novowels.index(char) + 1])		#do the same thing with the novowels string
		end
	end
	new_name.insert(name[1], " ")		   #use the passed in array to get the length of the users last name and add a space after it
	new_name[0].upcase!					   #change the first character to upper case
	new_name[name[1]+1].upcase!			   #change the first character after the space to upper case
	new_name = new_name.join('')		   #turn the array back into a string
end

request_name