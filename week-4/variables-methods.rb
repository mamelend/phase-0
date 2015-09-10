puts "What is your favorite number?"
fav_num = gets.chomp
better_num = fav_num.to_i + 1
puts better_num.to_s + " is a much bigger and better number than " + fav_num

=begin 
How do you define a local variable?
	variable_name = []
How do you define a method?
	def method_name(parameters)
		end
What is the difference between a local variable and a method?
	A local variable points to some bit of data. A method is a predefined function that can be called on a particular instance of it's class in order to return some sort of result.
How do you run a ruby program from the command line?
	ruby [filename]
How do you run an RSpec file from the command line?
	rpsec [rspec file name]
What was confusing about this material? What made sense?
This was all pretty straight forward.


Assignment 4.3.1: https://github.com/mamelend/phase-0/blob/master/week-4/address/my_solution.rb
Assignment 4.3.2: https://github.com/mamelend/phase-0/blob/master/week-4/math/my_solution.rb
=end