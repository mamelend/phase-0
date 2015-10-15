# Reverse Words


# I worked on this challenge [by myself, with: ]. SOLO
# This challenge took me [#] hours. 1 hour

# Pseudocode
# def a method that takes a string as an argument
# put it into an array, reverse each element, join then return array 


# Initial Solution
# def reverse_words(sentence)
#   temp_array = sentence.split(' ')
#   temp_array.map! do |x| x.reverse end
#   temp_array.join(' ')
# end


# Refactored Solution
def reverse_words(sentence)
  temp_array = sentence.split(' ')
  temp_array.map! do |x| x.reverse end
  temp_array.join(' ')
end



=begin
// Reflection
What concepts did you review in this challenge?

I reviewed some enumerables and how to move a string into an array and vice versa.


What is still confusing to you about Ruby?

I think this is all pretty clear, I just need some more practice.

What are you going to study to get more prepared for Phase 1?

I'm going to go over the basics. Time permitting I'm going to tackle some more ruby review problems before phase 1.

=end