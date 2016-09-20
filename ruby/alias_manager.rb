#Creates a spy name using the spy's real name
#
#1. Ask the spy for their name
#2. Swap the spy's first and last names
#3. Change the vowels in the name to the next vowel in 'aeiou' and all consonants
#   to the next consonant in the alphabet


def request_name
	puts "Please enter your name as long as you AREN't a spy ;) : "
	spy_name = gets.chomp.downcase   #returning user input
end

def swap_names(name)
	new_name = name.split(' ').reverse
	last_name_length = new_name[1].length
	name_info = [new_name, last_name_length] #returning reverse of first and last name and an the length of the first name
end

def next_letter(name)
	new_name = []
	novowels = 'bcdfghjklmnpqrstvwxyz'
	vowels = 'aeiou'
	name[0] = name[0].join.split('')
	name[0].each do |char|
		if vowels.include?(char)
			new_name.push(vowels[vowels.index(char) + 1])
		else
			new_name.push(novowels[novowels.index(char) + 1])
		end
	end
	new_name.insert(name[1], " ")
	return new_name
end


p next_letter(swap_names(request_name))



#push a space value into the array after the length of the first name (or last cant remember)