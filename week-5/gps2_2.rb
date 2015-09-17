# Release 1: Pseudocode
# Input: Various command-line instructions (create list, add items, remove item, updates to list, print list)
# Output: General application interface, output and save different lists, output the various states of the lists.
# Steps:
#  1. Lists will be stored in a hash, with the item as the key and value a the quanitity.
#  2. Write methods for various functions of the list.
#  3. Output to screen various operations to keep user informed what changes are being made.
#  4. Based on input from used, call appropriate methods.


# Release 2: Initial Solution

# def create_list(name)
#   name = {}
# end

# def add_item(list_name, key, value)
#   list_name[key] = value
# end

# def remove_item(list_name, key)
#   list_name.delete(key)
# end

# def update_item(list_name, key, value)
# # 
#   add_item(list_name, key, value)
# end

# def print_list(list_name)
#   list_name.each{ |k,v| puts "There are #{v} #{k}." }
# end

# Driver Code
# list = create_list("list")
# add_item(list, "Lemonade", 2)
# add_item(list, "Tomatoes", 3)
# add_item(list, "Onions", 1)
# add_item(list, "Ice Cream", 4)
# remove_item(list, "Lemonade")
# update_item(list, "Ice Cream", 1)
# print_list(list)


# Release 3: Test your solution
# list = create_list("list")
# add_item(list, "Lemonade", 2)
# add_item(list, "Tomatoes", 3)
# add_item(list, "Onions", 1)
# add_item(list, "Ice Cream", 4)
# remove_item(list, "Lemonade")
# update_item(list, "Ice Cream", 1)
# print_list(list)

# p print_list(list).is_a?(Hash) == true
# p update_item(list, "Ice Cream", 1) == 1
# p remove_item(list, "Lemonade") == nil
  
# Release 4: Refactor

def create_list(name)
  name = {}
end

def add_item(list_name, key, value)
  list_name[key] = value
end

def remove_item(list_name, key)
  list_name.delete(key)
end

def update_item(list_name, key, value)
  add_item(list_name, key, value)
end

def print_list(list_name)
  list_name.each{ |k,v| puts "There are #{v} #{k}." }
end

# What did you learn about pseudocode from working on this challenge?
# => We were a little confused about how to approach this challenge in terms of its scope, were we
# => tasked to create a whole application? Our guide sort of walked us through what was required
# => and we scaled down appropriately, unfortunately did minimal pseudocode.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
# => We went right with the hash. It made sense that we could have an unchanging item key point to 
# => a quanitity value, and override item quantity by basically readding key with new value.
# What does a method return?
# => The last evaluated line of code.
# What kind of things can you pass into methods as arguments?
# => Any sort of object you would like!
# How can you pass information between methods?
# => By passing in the appropriate parameters.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# => I think I could still use some insight on how to move information across methods, I'm not sure 
# => this problem allowed for much of that. At least, our implementation didn't call for that.