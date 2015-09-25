
#Attr Methods

# I worked on this challenge [by myself, with:] SOLO

# I spent [#] hours on this challenge.
# 1 hour

class NameData
	def get_name
		return "Miguel Melendez"
	end
end


class Greetings
	def initialize
		@name = NameData.new
	end

	def hello
		puts "Hello #{@name.get_name}! How wonderful to see you today."
	end

end

greet = Greetings.new
greet.hello


# Reflection

# Release 1: This class is set up to store the name, age, adnd occupation for 1 individual, and has 
# methods that will help to retrieve and modify those variables. The program runs through once and
# displays the name, age, and occupation for the initial person "Kim" and then changes the info and
# prints it out with a different methods in a different format. They are storing info into instance 
# variables taht remain consistent across methods.

# Release 2: This code is exactly the same except that it adds a reader method within the initializer
# called :age which essentially does what what_is_age used to do. what_is_age method is commented out.
# I think this code is much more simple that the last release.

# Release 3: This release is identical to the last except it also adds a writer method which replaces 
# the change_my_age method. Again this is much more simple than have a while extra method.

#Release 4 & 5: Some simple refactoring 


# What is a reader method?
# => A reader can access a particular instance vairable of a class from outside the class.
# What is a writer method?
# => A writer can change a particular instance vairable of a class from outside the class.
# What do the attr methods do for you?
# => They allow to set readers and writers inside of a class.
# Should you always use an accessor to cover your bases? Why or Why not?
# => No. Sometimes you only want to be able to read data out of a class, instead of manipulate data within a class.
# What is confusing to you about these methods?
# => This is all pretty straight forward.

