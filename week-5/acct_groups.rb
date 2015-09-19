# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: SOLO

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of students names.
# What is the output? (i.e. What should the code return?) An array of groups of students names.
# What are the steps needed to solve the problem?
# => I will need to write a method that accepts an array of names.
# => take the original array and manipulate it a bit to change the order, then slice it into gorups of 5.

# 1. Initial Solution
#def acct_groups(names)
#  puts names.sort.each_slice(4) {|slice| p slice}
#end

#Driver Code
#names = ["Shunqian Luo (Nathan)", "Kim Allen","Jenna Andersen", "Pamela Antonow", "Jupiter Baudot", "Ovi Calvo", "Awilda Cantres", "Celeste Carter", "Mike Cerrone", "Eunice Choi","Un Choi", "Kristie Chow", "Regina Compton", "Marcus Davis", "Paul Etscheit", "Solomon Fernandez", "Marcel Galang", "Aurelio Garcia", "Hector Jair Moreno Gomez", "Ricky Binhai Hu", "Kai Huang", "Alex Jamar", "Harmin Jeong", "Lauren Jin", "CJ Joulain", "Michael Landon", "Richard Leo", "Julian Lesse", "Ryan Lesson", "Ian Lockwood", "Christopher Mark", "Lauren Markzon", "Miguel Angel Melendez", "David OKeefe", "Nathan Park", "Landey Patton", "Farman Pirzada", "Samuel Frederick Purcell", "Salim Rahimi", "Colin Razevich", "Irina Renteria", "Jamie Runyan", "Eric Shou", "Michael Silberstein", "Rosslyn Sinclair-Chin", "Aji Slater", "Marvy Tagala", "George Warnbold", "Shawn Watson", "Hana Worku", "Nicholas Yee"]
#cct_groups(names)

# 3. Refactored Solution
def acct_groups(list_of_names)
  new_list = list_of_names.sort.shuffle.each_slice(4).to_a
  if new_list[-1].length < 3           
    puts new_list[-1]
    (new_list[-1] << new_list[-2]).flatten!
  end
  new_list
end

def remove_person(list_of_names, string_person)
  list_of_names.delete(string_person)
end

def add_person(list_of_names, string_person)
  list_of_names.push(string_person)
end


#Driver Code
names = ["Nathan Luo", "Kim Allen","Jenna Andersen", "Pamela Antonow", "Jupiter Baudot", "Ovi Calvo", "Awilda Cantres", "Celeste Carter", "Mike Cerrone", "Eunice Choi","Un Choi", "Kristie Chow", "Regina Compton", "Marcus Davis", "Paul Etscheit", "Solomon Fernandez", "Marcel Galang", "Aurelio Garcia", "Hector Jair Moreno Gomez", "Ricky Binhai Hu", "Kai Huang", "Alex Jamar", "Harmin Jeong", "Lauren Jin", "CJ Joulain", "Michael Landon", "Richard Leo", "Julian Lesse", "Ryan Lesson", "Ian Lockwood", "Christopher Mark", "Lauren Markzon", "Miguel Angel Melendez", "David OKeefe", "Nathan Park", "Landey Patton", "Farman Pirzada", "Samuel Frederick Purcell", "Salim Rahimi", "Colin Razevich", "Irina Renteria", "Jamie Runyan", "Eric Shou", "Michael Silberstein", "Rosslyn Sinclair-Chin", "Aji Slater", "Marvy Tagala", "George Warnbold", "Shawn Watson", "Hana Worku", "Nicholas Yee"]
remove_person(names, "Ryan Lesson")
remove_person(names, "Solomon Fernandez")
add_person(names, "Ryan Leston")
p acct_groups(names)

# 4. Reflection
#
# What was the most interesting and most difficult part of this challenge?
# => The most difficult part of this challenge was accounting for people leaving the cohort.  What would happen to the groups
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# => Yes! Although I didn't demonstrate that this time around.
# Was your approach for automating this task a good solution? What could have made it even better?
# => I think so, I provided that if the last group is less than 3 students, add them to the gorup just before that. 
# => I think there is more I could have done, I wanted to make sure each group was sorted with at least one member
# => from each location (san-fran, chi-town, big-apple) but that would have taken way longer!
# What data structure did you decide to store the accountability groups in and why?
# => Just an array of arrays...
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# => As you can see, I made many improvements to the sorting and provided so that no one was alone.

