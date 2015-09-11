# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].
#Kai Huang

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: list of numbers
# Output: sum of the list of numbers
# Steps to solve the problem.
# Iterate through the list of numbers
# Add numbers to each other


# 1. total initial solution
# def total(array_num)
#   sum = 0
#   array_num.each do |x|
#     sum=sum+x
#   end
#   sum
# end

# 3. total refactored solution
def total(array_num)
  array_num.inject{|sum,x| sum+x }
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: list of strings
# Output: a sentence from the list
# Steps to solve the problem.


# 5. sentence_maker initial solution
def sentence_maker(list_of_words)
	list_of_words.join(' ').capitalize << "."
end


# 6. sentence_maker refactored solution


