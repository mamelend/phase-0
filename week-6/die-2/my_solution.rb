# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ]. SOLO
# I spent [#] hours on this challenge.
# 1 Hour

# Pseudocode

# Input: array of values for each side of the die.
# Output: NUmber of sides and a random dice roll.
# Steps:
# We should start by checking IF labels is empty, if it is raise argument error, if not store it in an instance variable.
# Next we should set the sides equal to the size of the array.
# Lastly return a random number as an index into the array.


# Initial Solution

# class Die
#   def initialize(labels)
#   if labels.empty?
#   	raise(ArgumentError, "The Array is Empty!")
#   end
#   @labels = labels
#   end

#   def sides
#   	@labels.length
#   end

#   def roll
#   	@labels[rand(sides)]
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
  	raise(ArgumentError, "The Array is Empty!") if labels.empty?
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(sides)]
  end
end

# Reflection

# What were the main differences between this die class and the last one you created in 
# terms of implementation? Did you need to change much logic to get this to work?
# => This class used an array as an arguement instead of just a number of sides. Using 
# => enumerables we can access the different values in the array just as effectively.
# => This was pretty straight forward in terms of implementation, not much changed, even
# => though this gives us access to object based die classes instead just a number of sides.
# What does this exercise teach you about making code that is easily changeable or modifiable? 
# => It is good practice to define your own classes in order to easily modifiy the functionality.
# What new methods did you learn when working on this challenge, if any?
# => Array#empty? and Array#length are pretty standard at this point.
# What concepts about classes were you able to solidify in this challenge?
# => This was pretty basic but still helps to cement the concepts.




