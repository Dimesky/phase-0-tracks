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
		if password[index] != " " && password[index] != "z"
			password[index] = password[index].next
			index += 1
		elsif password[index] == "z"
			password[index] = "z"
			index +=1		
		else 
			password[index] = " "
			index +=1
		end
	end
	#puts password
	return password
end
# puts encrypt

# Get the character at each index posiotion. Convert to 1-26.
# Subtract 1 from each number, find new character and add the
# string values that way.
# *Decrypt

def decrypt(password)
	index = 0 
	alphabet = "abcdefghijklmnopqrstuvwxyz"

	while index < password.length
		if password[index] != " " && password[index] != "z"
			password[index] = alphabet[(alphabet.index(password[index]) - 1 )]
			index += 1
		elsif password[index] == "z"
			password[index] = "y"
			index +=1
		else
			password[index] = " "
			index +=1
		end
	end

	return password

	#puts encrypt
end

puts "Please enter your password: "
password = gets.chomp
puts "Would you like to encrypt or decrypt this password?"
usr_choice = gets.chomp
usr_choice = usr_choice.downcase
if usr_choice == "encrypt"
	puts "PASSWORD ENCRYPTED AS: #{encrypt(password)}"
else
	puts "PASSWORD DECRYPTED AS: #{decrypt(password)}"
end


# decrypt