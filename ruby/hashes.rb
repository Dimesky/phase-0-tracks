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
	client_decor: nil,
	is_client_rich: nil
}

welcome = ["", "              -------                ", "---Welcome to Matt-Assisted-Design---",
	"              -------                ", ""]

welcome.each do |line|
	puts line
end

design_info.each {|key, value| puts "Please enter value for #{key}: "
if key == :client_age || key == :client_children
		design_info[key] = gets.chomp.to_i
	else
		design_info[key] = gets.chomp
	end
}	

if design_info[:is_client_rich].downcase.chr == 'y' || design_info[:is_client_rich].downcase.chr == 't'
	design_info[:is_client_rich] = true
else
	design_info[:is_client_rich] = false
end

design_info.each {|key, value| puts "#{key.upcase}: #{value}"}

puts "              -------                "
puts "Would you like to change any values? (Enter the name of the value you wish
to change, otherwise type 'none'): "

change = gets.chomp

if design_info.has_key?(change.to_sym)
	puts "Please enter new value for #{change}"
	if change.to_sym == :client_age || change.to_sym == :client_children
		design_info[change.to_sym] = gets.chomp.to_i
	else
		design_info[change.to_sym] = gets.chomp
	end
elsif change == 'none'
	puts "No changes made."
else
	puts "Not a valid input."
end

design_info.each {|key, value| puts "#{key.upcase}: #{value}"}

puts "Thank you for using Matt-Assisted-Design technology. Goodbye."
