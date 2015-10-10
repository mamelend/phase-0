# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge. 4 Hours

# Pseudocode
# Declare and define contrustor method that will set the array argument as an 
# instance variable.
# Declare and define a method that will iterate through an array and store information
# about where there are values and where there are 'x''s.
# IF x_pos 5.times (whole row) contains x's RETURN true
# IF y_pos 5.times (whole coumn) contains 'x's RETURN true
# IF y_pos == ypos + 1 is true for 5.times RETURN true
# IF y_pos == ypos - 1 is true for 5.times RETURN true



# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]

bingo_false = [['x', 44, 'x', 8, 'x'],
               [22, 'x', 75, 'x', 73],
               [83, 85, 'x', 89, 57],
               ['x', 27, 96, 68, 'x'],
               ['x', 'x', 54, 80, 83]]

bingo_false2 = [['x', 'x', 'x', 8, 'x'],
               [22, 'x', 75, 'x', 73],
               [83, 85, 'x', 89, 57],
               ['x', 27, 96, 68, 'x'],
               ['x', 'x', 54, 80, 83]]


# Initial Solution
# class BingoScorer

#   def initialize(array)
#     @array = array
#   end

#   def check()
#     x_array = []
#     # y_array = []
#     @array.each do |x|
#       count = 0
#       x.each do |y|
#         if y == "x"
#           x_array.push(count)
#           # y_array.push(count)
#         end
#         count += 1
#       end
#     end

#     #p x_array
#     #p y_array

#     if x_array.uniq.sort == [0,1,2,3,4] || (x_array.length == 5 && x_array.uniq.length == 1)
#       return true
#     # elsif y_array.uniq.sort == [0,1,2,3,4]
#     #   return true 
#     else
#       return false
#     end
#   end

# end

# Refactored Solution
class BingoScorer

  def initialize(array)
    @array = array
  end

  def check()
    x_array = []
    y_array = []
    f_slash = 0
    b_slash = 0
    countx = 0
    @array.each do |x|
      county = 0
      x.each do |y|
        if y == "x"
          x_array.push(countx)
          y_array.push(county)
          if countx == county then f_slash += 1 end
          if countx == 4 - county then b_slash += 1 end
        end
        county += 1
      end
      countx += 1
    end

    #diagonals
    if y_array.uniq.sort == [0,1,2,3,4] && x_array.uniq.sort == [0,1,2,3,4] && f_slash == 5 || b_slash == 5
      puts "BINGO!"
      return true
    #whole row
    elsif y_array.uniq.sort == [0,1,2,3,4] && (x_array.length == 5 && x_array.uniq.length == 1) 
      puts "BINGO!"
      return true 
      #whole column  
    elsif x_array.uniq.sort == [0,1,2,3,4] && (y_array.length == 5 && y_array.uniq.length == 1)
      puts "BINGO!"
      return true
    else
      puts "sorry, no bingo :("
      return false
    end
  end

end

# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
# test = BingoScorer.new(horizontal)
# if test.check() then puts "test one: passed" end
# test2 = BingoScorer.new(vertical)
# if test2.check() then puts "test two: passed" end
# test3 = BingoScorer.new(right_to_left)
# if test3.check() then puts "test three: passed" end
# test4 = BingoScorer.new(left_to_right)
# if test4.check() then puts "test four: passed" end
# test5 = BingoScorer.new(bingo_false)
# if test5.check() then puts "this should be false" end
# test6 = BingoScorer.new(bingo_false2)
# if test6.check() then puts "this should be false" end

# Reflection
=begin
  
What concepts did you review or learn in this challenge?
I reviewed ruby again, which felt sort of foreign after learning javascript. I kept wanting
to add semicolons to everything. Ahhh...I'm at home again. I love you Ruby. I also got to
use some methods I hadn't used before including #uniq which only returns one instance of
every value. The logic was tough to figure out on this one, beyond planning for 5 x's that is.
I think I have a pretty good solution given my additional tests, but perhaps there is a hole
someehere.


What is still confusing to you about Ruby?
Ruby feels comfortable. I love enumerables. I ended up refactoring as I went so it's hard to 
really show what my intial solution looked like. The tough part here was figureing out the
best way to iterate through each array and collect the necessary info for detemrining
when bingo occured. 


What are you going to study to get more prepared for Phase 1?
I'm hoping to continue reading the well grounded rubyist but also just trying to wrap my 
head around as many examples as I can! I hope to do as many of the ruby review problems as
possible.
  
=end