# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array of strings or integers or floats.
# What is the output? (i.e. What should the code return?) Array of most frequent elements of the original array or values..
# What are the steps needed to solve the problem? Define a method  and set as its parameter an array variable name. Iterate through array in order to determine most frequent value or values. First method will evaluate highest appearing frequency of any appearing value. Set certain valuable equal to highest frequency while iterating through array. Call another method to select highest frequency (possibly using .reject, .find_all or .select). Put array elements into hash

# 1. Initial Solution

include Enumerable

  def mode(array)
  hash = Hash.new(0)
  array.each do |x|
    if hash.has_key?(x)
      hash.map { |k,v| v += 1 } }
    else
      hash.store(x, 1)
    end
  end
  hash.select {|x, y| hash.max_by{|k,v| v}}


  end  

  array = [1,2,3,3,4,4,5,5,5]
  puts mode(array)

# 3. Refactored Solution

#in `update': no implicit conversion of Array into Hash (TypeError)


# 4. Reflection