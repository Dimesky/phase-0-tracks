#PSEUDO-CODE INTERIOR DESIGN PROGRAM:
#
#1. Welcome the interior designer to the program
#2. Ask the user to input 
# => a. The client's name
# => b. The client's age
# => c. The client's home location
# => d. If the client has children
# => e. The client's preferred decor theme
#3. Store this information to a hash as it's being input by the user
#4. When all questions are answered, print the entered data back to the screen
#5. Ask the user if they would like to make any changes
#6. If the entry is not "none", allow the user to update the value for the key they input
#7. Print the updated version of the hash to the screen


design_info = {
	client_name: nil,
	client_age: nil,
	client_location: nil,
	client_children: nil,
	client_decor: nil
}

puts "Welcome to Matt-Assisted-Design"

design_info.each {|key, value| puts "Please enter value for #{key}: "
	design_info[key] = gets.chomp
}

p design_info