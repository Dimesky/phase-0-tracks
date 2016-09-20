# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
"iNvEsTiGaTiOn".swapcase!
=> “InVeStIgAtIoN”

"zom".insert(1, "o")
"zom".replace("zoom")
"zom".gsub(/[o]/, "o" => "oo")
"zom".sub(/[o]/, "oo")
=> “zoom”

"enhance".replace("   enhance   ")
"enhance".center(13)
=> "    enhance    "

"Stop! You’re under arrest!".replace("STOP! YOU'RE UNDER ARREST!")
"Stop! You’re under arrest!".upcase
"Stop! You’re under arrest!".upcase!
=> "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(9, " suspects")
"the usual".replace("the usual suspects")
"the usual".gsub(/[l]/, "l" => "l suspects")
"the usual".sub(/[l]/, "l suspects")
"the usual" << " suspects"
=> "the usual suspects"

" suspects".insert(0, "the usual")
" suspects".replace("the usual suspects")
" suspects".gsub(/[ ]/, " " => "the usual ")
" suspects".sub(/[ ]/, "the usual ")
" suspects".prepend("the usual")
=> "the usual suspects"

"The case of the disappearing last letter".replace("The case of the disappearing last lette")
"The case of the disappearing last letter"[0, 39]
"The case of the disappearing last letter".chop
=> "The case of the disappearing last lette"

"The case of the disappearing last letter".replace("he case of the disappearing last letter")
"The case of the disappearing last letter"[1, 40]
=> "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
"Elementary,    my   dear        Watson!".squeeze!
"Elementary,    my   dear        Watson!".replace("Elementary, my dear Watson!")
=> "Elementary, my dear Watson!"

"z".ord
=> 122 
# (What is the significance of the number 122 in relation to the character z?)
# The significance is that 122 is the integer ordinal of "z". An ordinal is the position of an
# item in a list, and they correspond to an ASCII value list.

"How many times does the letter 'a' appear in this string?".count("a")
# => 4