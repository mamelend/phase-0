# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ]. Hana Worku
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.

# Pseudocode
# Create a Pez Class that accepts group of flavors
  ## intializes with a group of flavors- array
  ## method for counting candy (pez_count)
  ## method for removing candy (get_pez)
  ## method for adding candy (add_pez)
  ## method for listing all flavors in order of what is most recent (see_all_pez)

# Initial Solution

# class PezDispenser

#   def initialize(flavors)
#     @flavors = flavors
#   end
  
#   def pez_count
#     @flavors.length
#   end
  
#   def get_pez
#     @flavors.pop
#   end
  
#   def add_pez(flavor)
#     @flavors << flavor
#   end
  
#   def see_all_pez
#     @flavors.reverse.each do |x|
#        x
#     end
#   end
# end



# Refactored Solution

class PezDispenser

  def initialize(flavors)
    @flavors = flavors
  end
  
  def pez_count
    @flavors.length
  end
  
  def get_pez(number = 1)
    #adding optional parameter so that user can take multiple candy     at a time
    @flavors.pop(number)
  end
  
  def add_pez(flavor)
    @flavors.push(flavor)
  end
  
  def see_all_pez
    @flavors.reverse
  end
end

# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
#puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts super_mario.see_all_pez
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

=begin
// Reflection
What concepts did you review in this challenge?
We went over some basics but it was great. We were done early so we spent some
extra time refactoring and adding little improvements such as the ability to 
grab multiple pez at one time.


What is still confusing to you about Ruby?
I could look into reg ex, which is a topic i didn't spend much time one.


What are you going to study to get more prepared for Phase 1?
I'm hoping to basically go over the basics for a more concrete understanding
to make sure I have a good foundation for phase 1.

=end