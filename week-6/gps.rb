# Your Names
# 1) Miguel Melendez
# 2) Farman Pirzada

# We spent [#] hours on this challenge.
# 2 hours

# Bakery Serving Size portion calculator.

#define a method that accepts as the arguments an item to make and an order (quantity)
def serving_size_calc(item, quantity) 
  #library within the method to hold the arguments 
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #this is where the counter is set that... ? 
  #error_counter = 3

   #if the food in library is not an item to make, deincrement error counter by one and print error_encounter   
  #library.each do |food|

  #  if library[food] != library[item_to_make]
  #    p error_counter -= 1 
  #  end
  #end
  #if error_counter is greater than 0, throw in an error statement saying this is not a valid item
  raise ArgumentError.new("#{item} is not a valid input") unless library[item]
  
  
  # array = [1, 2, 3, 4, 5]
  
  # array[0]   1
  
  #libraray.values_at["cake"]  AKA [5]
  
  # library.values_at("cake")[0]
  
  

  #values_at searches for the hash value for an item_to_make
  serving_size = library[item]
  #create a variable that stores what needs to be made 
  left_overs = quantity % serving_size
  

  #This will detemrine what feedback to give the user, if order_quanity divded evenly into the serving size, will return first case. Second case accounts for any leftover ingredients.

  case left_overs
  when 0
    return "Calculations complete: Make #{quantity/serving_size} #{item}(s)"
  else
    #find all values that can be made
    suggested = library.select {|k,v| v <= left_overs}
    return "Calculations complete: Make #{quantity/serving_size} #{item}(s), you have #{left_overs} leftover ingredients. Why don't you make some #{suggested.keys.join(" or ")}(s)"
  end

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 13)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 18)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
# => Oh, so many things! We refactored so that several lines of code for dealing
# => with an exception was just on line and super readable. I'm still trying to get
# => a handle on if/unless, while/until, but I feel like is will come ith practice.
# => Also, I think a big part of programming is just manifesting your thoughts on how
# => to solve a particular problem into the plainest easiest to read code ever.
# => It is very akin to writing, in the way you find specific words to describe things
# => rather than relying on adverbs and conventionals.
# Did you learn any new methods? What did you learn about them?
# => I wouldn't say I learned any new ones, but I do have a new and profound love for
# => the Hash#select method! :)
# What did you learn about accessing data in hashes? 
# => I learned that if you want all of a certain occurance, use select! opposite of reject.
# => btw I love the way ruby has opposing/complimentary methods sort of like
# => batman/joker thing, going on.
# What concepts were solidified when working through this challenge?
# => #select, and unless. Use descriptive variable names. Do the right thing. (like Mookie) :)

