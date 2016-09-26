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
# input: hash
# steps:
  # Figure out which item needs to be removed
  # Check if the item exists, IF it does, remove the item from the list. If mulitples of the item exist, only remove 1 item.
  # If it doesn't exist, keep all original items
# output: hash

# Method to update the quantity of an item
# input: hash
# steps:
  # Find the index of the item we want to update
  # Re-write the number of items that exist
# output: hash

# Method to print a list and make it look pretty
# input: hash
# steps:
  # Iterate through hash
  # On each iteration, ensure that the output of that item - number pair looks pretty
# output: hash

def create_a_list(items)
	item_array = items.split(' ')
	number_of_items = 0
	item_hash = {}
 	item_array.each do |item|
 		item_hash[item] = 1
 	end
 	p item_hash
 end

 create_a_list("carrots apples cereal pizza")