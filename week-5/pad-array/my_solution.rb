# Pad an Array

# I worked on this challenge [with: Hana Worku] 

# I spent [2.5 hours] hours on this challenge. 


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?  An array, an integer (defining the final length of the array), an optional object
# What is the output? A new array

# What are the steps needed to solve the problem?
# Create a method that accepts three arguments (an array, a number for minimum size, and final arguement that defaults to nil but can be something else)
# Take the array and compare it to the minimum size
# If its the same as the minimum size or less, do nothing and return the array (for pad method only)
#   If the minimum size is greater than the size of the array, fill in the array with the value (nil is default)

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#  if min_size <= array.length then return array
#     else (min_size - array.length).times {array << value}
#   end
#   return array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = Array.new
#   new_array += array
#   if min_size <= new_array.length then return new_array
#     else (min_size - array.length).times {new_array << value}
#   end
#   return new_array
# end

#driver code
# x = [1,2,3]
# p "this is the non-destructive method original array id #{array.object_id}"
# p "this is array right now #{x}"
# p pad!(x, 3, "apple")
# p "now, array is #{x}"
# p pad!(x, 5)
# p "now, array is #{x}"
# p pad!(x, 5, "apple")
# p "now, array is #{x}"

# p "this is the destructive method"
# x = [1,2,3]
# p "this is array right now #{x}"
# p pad!(x, 3, "apple")
# p "now, array is #{x}"
# p pad!(x, 5)
# p "now, array is #{x}"
# p pad!(x, 5, "apple")
# p "now, array is #{x}"


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size > array.length
   (min_size - array.length).times {array << value}
end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new
  new_array += array
  if min_size <= new_array.length then return new_array
    else (min_size - array.length).times {new_array << value}
  end
  return new_array
end

# Were you successful in breaking the problem down into small steps?
# => We were able to break down the problem into some really awesome psuedocode, my partner was awesome at this.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# => Pseudocode flowed seemlessly onto the page as ruby code.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# => Our intital solution was fine for the most part. We had some trouble with the non destructive method 
# => and setting a new array that didn't have the same object id as the first. We spent quite some time trying 
# => to research why this was, but we ran out of time as per time boxing.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# => Our code looked pretty clean, we were able to clean up some redundancy. Other than that, we kind of ran out 
# => of time, since we weren't familiar with any enumerables that would shorten the code and followed our logic. 
# How readable is your solution? Did you and your pair choose descriptive variable names?
# => Variable names are pretty standard. I think it is super easy to follow, but I'm probably biased.
# What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods usually permanently change the values of the arguements, while non-destructive methods return new values.

