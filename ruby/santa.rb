class Santa

	def speak
		puts "Ho, Ho, Ho! Haaaappy Holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def initialize
		puts "Initializing Santa instance..."
	end

end

santa = Santa.new

santa.speak
santa.eat_milk_and_cookies("chocolate chip")