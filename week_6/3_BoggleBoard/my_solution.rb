# U2.W6: Create a BoggleBoard Class

# I worked with Stephen Estrada on this challenge

# 2. Pseudocode
# define initialize method with an Array parameter
# raise an argument error if parameter is not an array
# create an instance variable and assign it to the param name
# raise an argument error if 2D input array is not a square
# for i in 0..@grid.length
#   raise Argumenterror.new('Input array is not a square') unless @grid.length==@grid[i].length
# end

 
# 
# define create_word method taking an indeterminate number of arrays
# iterate through the array containing the coordinates
# pull each letter into a new array based on the coordinate values
# join letters from new array to return a string
# end
# 
# define method get_row taking a single Integer parameter
# raise an argument error if parameter is greater than number of elements contained
#   in boggle board grid
# return the element in the nth position of the instance variable, where n is defined by
#   the input parameter
# end
# 
# define method get_column taking a single Integer parameter
# raise an argument error if parameter is greater than number of elements contained
#   in boggle board grid
# loop/iterate through instance variable using each method selecting nth row and nth column where n is defined in the
#parameter
# assert board dimensions are 4x4 in the initialize method
# raise ArgumentError.new ("parameter greater than num of cols") unless parameter<=@grid.length[0]-1



# 3. Initial Solution
class BoggleBoard

	attr_reader :grid
  
  def initialize grid 
  	@grid = grid
  end

  def create_word *coords
    coords.map {|coord| @grid[coord.first][coord.last]}.join("") 
  end

  def get_row row 
  	@grid[row]
  end

  def get_col col 
  	@grid.map {|x| x[col]}
  end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

boggle_board.create_word([1, 2], [1, 1], [2, 1], [3, 2]) # => 'dock'

p boggle_board.get_row(0) == ["b", "r", "a", "e"]
p boggle_board.get_row(1) == ["i", "o", "d", "t"]
p boggle_board.get_row(2) == ["e", "c", "l", "r"]
p boggle_board.get_row(3) == ["t", "a", "k", "e"]

p boggle_board.get_col(0) == ["b", "i", "e", "t"]
p boggle_board.get_col(1) == ["r", "o", "c", "a"]
p boggle_board.get_col(2) == ["a", "d", "l", "k"]
p boggle_board.get_col(3) == ["e", "t", "r", "e"]


# 4. Refactored Solution
=begin
The intial solution provided is as refectored to its best. 
=end





# 1. DRIVER TESTS GO BELOW THIS LINE
def assert 
  raise 'Assertion Failed!' unless yield
end

# create driver test code to retrieve a value at a coordinate here:

assert {boggle_board.grid[0][1] == "r"}
# implement tests for each of the methods here:

assert {boggle_board.create_word([0,0], [1, 0], [3, 2], [3, 3])== "bike"}
assert {boggle_board.get_row(0) == "brae"}
assert {boggle_board.get_col(0) == "biet"}


# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# The strategy was fairly straightforward and build heavily on prior work done in week 5.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# No questions :) But talking it out with Stephen was helpful
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# No concepts are giving me troubles.
# 
# Did you learn any new skills or tricks?
# Not really.
# 
# How confident are you with each of the Learning Competencies?
# very.
# 
# Which parts of the challenge did you enjoy?
# This was also a fairly easy challenge for me.
# 
# Which parts of the challenge did you find tedious?
# None.