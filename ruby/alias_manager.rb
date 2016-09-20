#Creates a spy name using the spy's real name
#
#1. Ask the spy for their name
#2. Swap the spy's first and last names
#3. Change the vowels in the name to the next vowel in 'aeiou' and all consonants
#   to the next consonant in the alphabet

def request_name
	alias_store = {}
	spy_name = ''
	until spy_name == 'quit'
		p "Please enter the name of the person who is NOT a spy ;) - otherwise type 'quit': "
		spy_name = gets.chomp   #returning user input
		if spy_name == 'quit'
			puts "Thank you."
		elsif spy_name == '' || !spy_name.strip.include?(" ") || spy_name.count(" ") > 1 || spy_name =~ /\d/    #input validation
			puts "Please enter a valid name"
		else
			puts next_letter(swap_names(spy_name))
			alias_store.store(spy_name, next_letter(swap_names(spy_name)))					 #storing hash key/values of input name, and return value from next_letter method
		end
	end
	alias_store.each {|orig_name, spy_name| puts "#{spy_name} is acutally #{orig_name}."}    #storing names in hash t
end

def swap_names(name)
	new_name = name.downcase.split(' ').reverse
	last_name_length = new_name[0].length
	name_info = [new_name, last_name_length, name] #returning reverse of first and last name and an the length of the first name
end

def next_letter(name)
	new_name = []                          #initialize new array to hold new name
	novowels = 'bcdfghjklmnpqrstvwxyzb'	   #define alphabet without vowels - add catch with 'b' for edge case
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