# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.
# 3 Hours


# Release 0: Pseudocode
# Outline: This program is designed to display a simple bingo board.

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Generate letter based on index in array, call #rand method with parameter(100)

# Check the called column for the number called.
  #iterate through each array and check IF each index(column) equals the number called.

# If the number is in the column, replace with an 'x'
  # if array value = called number, map! letter X.

# Display a column to the console
  #Iterate through each array and print the called index.

# Display the board to the console (prettily)
  #display each column, preface with B I N G O.

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def get_rand_pair
#     b_array = ["B","I","N","G","O"]
#     new_array = []
#     let = b_array[rand(b_array.length)]
#     num = Random.new
#     num = num.rand(100)
#     new_array << let << num
#   end

#   def check_col(position)
#     bingo_hash = {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
#     @bingo_board.each do |x| 
#       if x[bingo_hash[position[0]]] == position[1]
#         x.map! {|y| y == position[1] ? "X".to_sym : y}
#       end
#     end
#   end

#   def display_col(column)
#     bingo_hash = {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
#     puts column
#     @bingo_board.each do |x| 
#       p x[bingo_hash[column]]
#     end
#   end

#   def display_board()
#     puts " B   I   N   G   O"
#     @bingo_board.each do |x| 
#       p x
#     end
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def get_rand_pair
    b_array = ["B","I","N","G","O"]
    new_array = []
    let = b_array[rand(b_array.length)]
    num = Random.new
    num = num.rand(100)
    new_array << let << num
  end

  def check_col(position)
    bingo_hash = {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
    @bingo_board.each do |x| 
      if x[bingo_hash[position[0]]] == position[1]
        x.map! {|y| y == position[1] ? "X".to_sym : y}
      end
    end
  end

  def display_col(column)
    bingo_hash = {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
    puts column
    @bingo_board.each do |x| 
      p x[bingo_hash[column]]
    end
  end

  def display_board()
    puts " B   I   N   G   O"
    #@bingo_board["N"][2] = " "
    @bingo_board.each do |x| 
      p x
    end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

# * MORE DRIVER CODE (TESTING) *
#p new_game.get_rand_pair
#new_game.check_col(["G", 89])
#new_game.display_col("G")
#new_game.check_col(["B", 25])
#new_game.check_col(["I", 44])
#new_game.display_board()

#Reflection


# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# => Honestly, I think I can get a little more specific when psuedocoding. This assigmnt was much more 
# => challenging than the other assignments in my opinion, and so I didn't really know how to approach
# => it until I jumped in and started playing around, writing driver code to make sure the little
# => things all worked. I think I need to spend more time fleshing out my psuedocode.
# What are the benefits of using a class for this challenge?
# => It encapulates all of these different methods that can work together to create the bingo game.
# How can you access coordinates in a nested array?
# => I iterated into the arrays twice, with #each and #map.
# What methods did you use to access and modify the array?
# => #map! was useful for accessing elements in the array.
# How did you determine what should be an instance variable versus a local variable?
# => I tried to use minstance variables but for some reason they wouldn't work. I wanted to use my
# => bingo_hash, which helped me to associate numbers of columns to the letters B I N G O, but
# => that didn't work as expected.
# What do you feel is most improved in your refactored solution?
# => I refactored as I went along, so it's tough to see above. I had a very round about way of pointing
# => to the different elements of the letters and numbers we used, until I shortened it by just using
# => bingo_hash[position[0]]


