module Shout
	# We'll put some methods here soon, but this code is fine for now!
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
  	words + "!!!" + " :)"
  end

end

# p Shout.yell_angrily("AHHHH, I HATE EVERYONE")
# p Shout.yell_happily("AHHHH, I LOVE EVERYONE")

class Weightlifter

	include Shout

end

class Football_coach

	include Shout

end

weightlifter = Weightlifter.new
p weightlifter.yell_angrily("RAWRARGHHH")
p weightlifter.yell_happily("RAWRARGHHH")

football_coach = Football_coach.new
p football_coach.yell_angrily("HEY GET YOUR HEADS OUT OF YOUR BUTTS")
p football_coach.yell_happily("THATAWAY TEAM")