class Puppy

  def initialize
  	puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	number.times do |eachtime|
  		puts "Woof"
  	end
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_age)
  	human_age * 7
  end

  def stay(seconds)
  	seconds.times do |second|
  		puts "Waited #{second + 1} seconds.."
  	end
  end

end

puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(4)
puppy.roll_over
p puppy.dog_years(14)
puppy.stay(5)

class Developer

	def initialize
		puts "Initializing new developer instance..."
	end

	def code(number_of_lines)
		puts "The developer has coded #{number_of_lines} lines of code."
	end

	def name_the_developer(favorite_band, hobby, last_name)
		tag = "#{hobby}_#{favorite_band}_#{last_name}"
		tag.gsub!(/[e]/, '3')
		tag.gsub!(/[o]/, '0')
		tag.gsub!(/[a]/, '4')
		p "The developers default handle is #{tag}"
	end

end

developer_array = []

developer = Developer.new

developer.code(10000)
developer.name_the_developer("tool", "eating", "smith")

50.times {|developer| developer_array << Developer.new}



developer_array.each do |developer|
	developer.name_the_developer("GreenDay", "Jogging", "Doe")
	developer.code(100)
end



p developer_array




