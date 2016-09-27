# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza") 
# steps: 
  # Allow for the method to take a string argument
  # set default quantity - take the number of items in the string and create a quantity separated by spaces
  # print the list to the console [can you use one of your other methods here?] Print each item back to the user
# output: Hash

# Method to add an item to a list
# input: item name and optional quantity, hash
# steps: 
  # Update the hash with the new items as the key and the quantity of each as the value
# output: hash

# Method to remove an item from the list
# input: hash, item name to remove
# steps:
  # Figure out which item needs to be removed
  # Check if the item exists, IF it does, remove the item from the list. If mulitples of the item exist, only remove 1 item.
  # If it doesn't exist, keep all original items
# output: hash

# Method to update the quantity of an item
# input: hash, item, quantity
# steps:
  # Find the index of the item we want to update
  # Re-write the number of items that exist
# output: hash

# Method to print a list and make it look pretty
# input: hash
# steps:
  # Iterate through hash
  # On each iteration, ensure that the output of that item - number pair looks pretty
# output: string

def create_a_list(items)
	item_array = items.split(' ')
	item_hash = {}
 	item_array.each do |item|
 		item_hash[item] = 1
 	end
 	return item_hash
end

def add_item_to_list(item_name, item_hash, quantity = 1)
 	item_hash.store(item_name, quantity)
 	return item_hash
end

def remove_item_from_list(item_name, item_hash)
 	item_hash.delete_if {|item, number| item == item_name}
 	return item_hash
end

def update_quantity(item_name, item_hash, quantity)
	if item_hash.has_key?(item_name)
		item_hash[item_name] = quantity
	end
	return item_hash
end

def beautify(item_hash)
	puts "Here is your grocery list: "
	puts "-------------------------- "
	puts ""
	item_hash.each {|item, number| puts "#{item}: #{number}"}
end


# grocery_list = create_a_list("carrots apples cereal pizza")

# add_item_to_list("donuts", grocery_list, 5)

# remove_item_from_list("apples", grocery_list)

# update_quantity("carrots", grocery_list, 3)

# beautify(grocery_list)

new_list = create_a_list("donuts peppers milk")

add_item_to_list("lemonade", new_list, 2)
add_item_to_list("tomatoes", new_list, 3)
add_item_to_list("onions", new_list, 1)
add_item_to_list("ice cream", new_list, 4)

remove_item_from_list("lemonade", new_list)
update_quantity("ice cream", new_list, 1)

beautify(new_list)

#1. I learned that pseudocode is best when it is very descriptive in a step by step fashion. If it isn't descriptive, it
# => is much harder to use to accurately translate it to actual code. Pseudocode also has to include what data will be 
# => input, and what will be output when defining methods.
#
#2. The tradeoffs of using arrays and hashes for this assignment is that srings can easily be converted into arrays, while it's
# => harder to turn them into hashes. However, hashes are easier to use when you want to keep track of differing amounts
# => of certain items that was called for in this exercise.
#
#3. A mthod returns the evaluation of the last statement that was listed in the method itself. That's why in each of our methods
# => we used an explicit return so that the implicit value (sometims an enumerator) was replaced with a hash value.
#
#4. You can pass any object into a method as an argument, even other method calls (which are subsequently evaluated to something
# => else before the outer method uses it as an argument.)
#
#5. You can pass information between methods by returning a value from a method, that is then used as an argument passed into the
# => parameter that was defined in another method declaration. This allows the new method to access the data that was manipulated
# => from the code that was defined in the original method.
#
#6. The concepts that were solidified in this challenge were how to pseudocode effectively, global vs local scope of variables,
# => and using explicit vs implicit return values. For me, the difficulty still lies with wrapping my brain around defining very
# => simple methods instead of long verbose ones.




