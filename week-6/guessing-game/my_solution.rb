# Build a simple guessing game


# I worked on this challenge [by myself, with: ]. SOLO
# I spent [#] hours on this challenge.
# 1 hour

# Pseudocode

# Input: An integer that represents the answer that is trying to be guessed.
# Output: A class that allows you to guess for a number, tells you if you are 
# the number is lower or higher thatn your guess, and a method that returns true 
# if your last guess was correct.
# Steps:
# In the initializer, ser answer as a instance variable.
# Define a method #guess that tells you if a number entered is higher or lower than the input.
# Define a method that returns TRUE if the last return of guess equals the input.


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#   	@guess = guess
#   	if @guess < @answer then return :low
#   	elsif @guess > @answer then return :high
#   	else
#   		return :correct
#   	end
#   end

#   def solved?()
#   	@guess == @answer
#   end
# end




# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess < @answer then return :low
  	elsif @guess > @answer then return :high
  	else
  		return :correct
  	end
  end

  def solved?()
  	@guess == @answer
  end
end


# Reflection
# How do instance variables and methods represent the characteristics and 
# behaviors (actions) of a real-world object?
# => Instance variables can store characterisitcs through out the instance of a class.
# When should you use instance variables? What do they do for you?
# => They are good for holding information about a particular instance.
# Explain how to use flow control. Did you have any trouble using it in this challenge? 
# If so, what did you struggle with?
# => I had trouble thinking about the logic behind when I wanted a method to change the value
# => of guess beyond the scope of that method. But it seems as if for this problem, we wanted 
# => guess to be available thorugout the class.
# Why do you think this code requires you to return symbols? 
# What are the benefits of using symbols?
# => This part I was unsure about, I know symbols are similar to strings, but function a lot
# => like integers. I'm not sure if they were necessary for this problem.


