# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end	
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#170
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#The while loop from line 14 never closed using end, document was patiently waiting until the last line. 
# 6. Why did the interpreter give you this error?
#because the while loop never closed.

# --- error -------------------------------------------------------

south_park = 0

# 1. What is the line number where the error occurs?
#36
# 2. What is the type of error message?
#NameError
# 3. What additional information does the interpreter provide about this type of error?
#undefined local variable or method `south_park' for main
# 4. Where is the error in the code?
#the variable/method is never defined
# 5. Why did the interpreter give you this error?
#the variable needs to be defined. warning the programmer that this variable was never defined.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
#51
# 2. What is the type of error message?
#NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#undefined method `cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
#There is no def keyword, and no end keyword to the method
# 5. Why did the interpreter give you this error?
#This is a warning that I have an undefined method.

# --- error -------------------------------------------------------

def cartmans_phrase(string)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#67
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#line 67 should have an arguement in the def of the method
# 5. Why did the interpreter give you this error?
#to warn that the method needs to be set up to receive an arguement.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("I hate you guys.")

# 1. What is the line number where the error occurs?
#86
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# when calling the cartman_says method, no parameter was given.
# 5. Why did the interpreter give you this error?
#The method cannot be properly called without passing in an arguement.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'you guys')

# 1. What is the line number where the error occurs?
#107
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#Same place, this time only one arguement is passed in instead of the required two
# 5. Why did the interpreter give you this error?
#There weren't enough arguements in the call to cartmans_lie method.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5 

# 1. What is the line number where the error occurs?
#126
# 2. What is the type of error message?
#TypeError
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum
# 4. Where is the error in the code?
#String must be mutiplied by number, not the other way around since there is no way to know how to multiple a number by a given string.
# 5. Why did the interpreter give you this error?
#Warning that this won't give expected output.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
#141
# 2. What is the type of error message?
#ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#divided by 0
# 4. Where is the error in the code?
#in the operation
# 5. Why did the interpreter give you this error?
#Number is undefined. "The reason is related to the associated multiplication question. If you divide 6 by 3 the answer is 2 because 2 times 3 IS 6. If you divide 6 by zero, then you are asking the question, "What number times zero gives 6?" - Google

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#157
# 2. What is the type of error message?
#LoadError
# 3. What additional information does the interpreter provide about this type of error?
#cannot load such file -- /Users/miguelmelendez/phase-0-cirriculum/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
#In the call to require relative file "cartmans_essay"
# 5. Why did the interpreter give you this error?
#There is no such file! 


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?
Probably the first example. It took me a second to catch the fact that there was only one end command.
How did you figure out what the issue with the error was?
The error being at the end of the document was a big clue! It made me think to the reading about ruby being patient about waiting for the end to a conditional statement.
Were you able to determine why each error message happened based on the code? 
Most of the time, otherwise running the program and getting the error message back was enough.
When you encounter errors in your future code, what process will you follow to help you debug?
Setting up tests seems like a good technique. I think also running your program after any significant additon will help.

=end