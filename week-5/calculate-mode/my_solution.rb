# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ] CJ Joulian

# I spent [] hours on this challenge. 3.5 hours

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array of strings or integers or floats.
# What is the output? (i.e. What should the code return?) Array of most frequent elements of the original array's values.
# What are the steps needed to solve the problem? Define a method  and set as its parameter an array variable name. Iterate through 
# array in order to determine most frequent value or values. Call another method to select highest frequency values and return those values.
# (possibly using .reject, .find_all or .select).

# 1. Initial Solution

  include Enumerable

  # def mode(array)
  # hash = Hash.new(0)
  # array.each {|key| hash[key] +=1}
  # hash.select {|k,v| v == hash.values.max}.keys
  # end

  #Driver Code
  #array = [1,2,3,3,4,4,5,5,5]
  #puts mode(array)

# 3. Refactored Solution
  def mode(array)
  hash = Hash.new(0)
  array.each {|key| hash[key] +=1}
  hash.select {|k,v| v == hash.values.max}.keys
  end


# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# => We decided that the hash#select method would work best to iterate through the hash and select the values with the highest frequency, then
# => only return those keys.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# => I think the pseudocode went pretty well, it was transfering the psuedocode into actual ruby that was tricky.
# What issues/successes did you run into when translating your pseudocode to code?
# => We had much trouble trying to store information in a hash, without overwriting the hash value upon next iteration.
# => The solution turned out to be more straightforward than expected.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# => We used array#each to create the hash, and then hash#select to pick specific keys determined by the frequency of values.



