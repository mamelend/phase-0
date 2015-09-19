# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ] SOLO

# I spent [] hours on this challenge. 1 Hour

# 0. Pseudocode

# Input: We want to pass in the sides to the constructor method and create an instance of a die class with methods roll and sides.
# Output: We want to be able to return the number of sides, and get a random die roll.
# Steps: define contructor, define sides method, and define roll method. Create instance methods in order to share information within the class.


# 1. Initial Solution

# class Die
# include Enumerable
#   def initialize(sides)
#   	if sides < 1 then raise ArgumentError.new("Number of sides must be greater than one.") end
#     @sides = sides
#     @die = Array.new(sides)
#   end

#   def sides
#     @die.size
#   end

#   def roll
#     1 + rand(@sides)
#   end
# end



# 3. Refactored Solution
class Die
include Enumerable
  def initialize(sides)
  	if sides < 1 then raise ArgumentError.new("Number of sides must be greater than one.") end
    @sides = sides
    @die = Array.new(sides)
  end

  def sides
    @die.size
  end

  def roll
    1 + rand(@sides)
  end
end


# 4. Reflection

# What is an ArgumentError and why would you use one?
# # => An argument error lets the user know that the object wont work as intended under the given circumstances.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# => The were all pretty straight forward, I haven't really had a chance to use rand much.
# What is a Ruby class?
# => A ruby class is a blueprint for specific objects.
# Why would you use a Ruby class?
# => You would use a ruby class to access methods of a class or instance of that class.
# What is the difference between a local variable and an instance variable?
# => A local variable is local in scope to a particular method, meanwhile and instance variable's scope
# => is open to the entire instance of that class.
# Where can an instance variable be used?
# => anywhere within the instance of that class.


