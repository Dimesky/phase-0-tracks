module Shout
	# We'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words + "!!!" + " :)"
  end

end

p Shout.yell_angrily("AHHHH, I HATE RUBY")
p Shout.yell_happily("AHHHH, I LOVE RUBY")
