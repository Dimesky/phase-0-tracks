def ask_Vamp
	puts "Hello, what is your name?"
	name = gets.chomp

	puts "How old are you? What year were you born?"
	ageyear = gets.chomp.split(' ')
	age = ageyear[0].to_i
	year = ageyear[1].to_i

	puts "Our company serves garlic bread. Should we order some for you?"
	garlic_bool = gets.chomp

	puts "Would you like to enroll in the company's health insurance?"
	insurance_bool = gets.chomp

	answers = [name, ageyear, garlic_bool, insurance_bool]

	puts age + year
end

ask_Vamp