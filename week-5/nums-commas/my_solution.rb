# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# => The Input will be a positive Integer such as 1000, or 10000.
# What is the output? (i.e. What should the code return?) 
# => The return value should be a string that holds that number, seperated by commas.
# What are the steps needed to solve the problem?
# Create a method that accepts an integer as an arguement.
# Convert to string.
# Evaluate and determine where I will need to insert commas. Divide the length of the string by 3, save that number into a variable called comma_count.
# WHILE comma_count > 0, insert comma into -4(3 from end of string) comma_position.
# deincrement comma_count, deincrement comma_position.
# Return String


#1. Initial Solution

# def separate_comma(int)
# num = int.to_s
#   if num.length < 4
# 	return num
#   end
# comma_count = num.length / 3
# if num.length % 3 == 0 then comma_count = comma_count - 1 end
# comma_position = -4
#   while comma_count > 0
# 	num.insert(comma_position, ",")
# 	comma_position = comma_position - 4
# 	comma_count = comma_count - 1
#   end
#   return num
# end

# 2. Refactored Solution

def separate_comma(int)
num = int.to_s
comma_count = num.length / 3
if num.length % 3 == 0 then comma_count = comma_count - 1 end
comma_position = -4
  while comma_count > 0
	num.insert(comma_position, ",")
	comma_position = comma_position - 4
	comma_count = comma_count - 1
  end
  return num
end



# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?
I began to consider the rules that govern when we add commas between digits. It seemed pretty appartent that it was after every hundred's place or complete set of three.
Was your pseudocode effective in helping you build a successful initial solution?
I couldn't beleive how easy it was to go back and pretty much write in ruby, what I had just written out in english.
What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
I realized I could get rid of some things that were redundant. I couldn't find any methods that would make this cleaner without changeing the fundamental structure of my solution.
How did you initially iterate through the data structure?
I used a while loop.
Do you feel your refactored solution is more readable than your initial solution? Why?
I think so for sure, it's not as dense and more straight forward.

=end


