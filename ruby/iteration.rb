# def our_method
#   puts "before yield"
#   yield"matt"
#   puts "after yield"
# end
# our_method { |x| puts "yield to me #{x}"}
# array2 = array1.map {|color| p "#{color} is my favourite colour"} 
# hash1.map { |fruit, color| p "the #{fruit} is #{color}"}
# p array1
# p array2
# p hash1
# p hash1.class
# p hash1.each { |fruit, color| p "the #{fruit} is #{color} HASH EACH"  }
# p array1.each do |color|
#   if color == "blue"
#       puts "i found"
#   else
#       puts "no luck"
#   end
# end
#release 2
# p array1.delete("red")
# p array1
# v = hash1.delete(:orange) {|x| " #{x} was deleted"}
# p hash1
# p v
# hash1["str"]= "this is a string"
# p hash1
# hash1.delete_if {|fruit, color| fruit.class == String}
# p hash1
 array1 = ["blue", "red", "green"]
 hash1 = { orange: "orange", apple: "green", lemon: "yellow", grape: "purple", kiwi: "brown"}
 array2 = []
# array1.delete_if { |color| color > "orange"}
# p array1
array3 = [1, 2, 2, 2, 3, 4, 5, 6, 7, 8, 9, 9]
array4 = []
# hash1.keep_if {|fruit, color| color >= "orange"}
# p hash1
# p array3
# array3.keep_if { |index| index > 5 }
# p array3
#3
#p array3.select {|index| index.odd?}
#p hash1.select! {|fruit, color| fruit == :orange || color == "green"}
#p hash1
#p hash1.fetch(:orange) {|fruit| puts "We have fetched #{fruit} "}
#p array3.drop_while {|index| index <= 4}
#4
p hash1.reject! {|fruit, color| fruit == :apple}
