# # our psuedo-code

# Get length of abc


# Build a counter based on index length

# Switch each letter one position forward in alphabet with .next
# method.

# If the string position is a space, leave as space.

# *Encrypt

def encrypt(password)
	index = 0
	while index < password.length 
		if password[index] != " "
			password[index] = password[index].next
			index += 1	
		else 
			password[index] = " "
			index +=1
		end
	end
	puts password
	return password
end
# puts encrypt

# Get the character at each index posiotion. Convert to 1-26.
# Subtract 1 from each number, find new character and add the
# string values that way.
# *Decrypt

def decrypt(encrypt)
	index = 0 
	alphabet = "abcdefghijklmnopqrstuvwxyz"

	while index < encrypt.length
		if encrypt[index] != " "
			encrypt[index] = alphabet[(alphabet.index(encrypt[index]) - 1 )]
			index += 1
		else
			encrypt[index] = " "
			index +=1
		end
	end

	puts encrypt
end

decrypt(encrypt("this is a test"))

# decrypt