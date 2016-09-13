def ask_Vamp
	puts "What is your name?"
	name = gets.chomp

	puts "How old are you? What year were you born?"
	ageyear = gets.chomp.split(' ')
	age = ageyear[0].to_i
	year = ageyear[1].to_i

	puts "Our company serves garlic bread. Should we order some for you?"
	garlic_bool = gets.chomp.downcase
	if garlic_bool[0] == "y"
		garlic_bool = true
	else
		garlic_bool = false
	end

	puts "Would you like to enroll in the company's health insurance?"
	insurance_bool = gets.chomp.downcase
	if insurance_bool[0] == "y"
		insurance_bool = true
	else 
		insurance_bool = false
	end

	answers = [name, age, year, garlic_bool, insurance_bool]
end

def is_Vamp(ask_Vamp)
	time = Time.new
	if (ask_Vamp[0] == "Tu Fang" || ask_Vamp[0] == "Drake Cula")
		is_vampire = true
		puts "Definitely a vampire."
	elsif (ask_Vamp[2] == time.year - ask_Vamp[1]) && (ask_Vamp[3] == true || ask_Vamp[4] == true)
		is_vampire = false
		puts "Probably not a vampire."
	elsif (ask_Vamp[2] != time.year - ask_Vamp[1]) && (ask_Vamp[3] == false && ask_Vamp[4] == false)
		is_vampire = true
		puts "Almost certainly a vampire."
	elsif (ask_Vamp[2] != time.year - ask_Vamp[1]) && (ask_Vamp[3] == false || ask_Vamp[4] == false)
		is_vampire = true
		puts "Probably a vampire."
	else
		puts "Results inconclusive."
	end
end

is_Vamp(ask_Vamp)