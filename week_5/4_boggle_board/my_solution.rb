# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].
# By myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# 

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# input: integer signifying the row in the array
# output: an array containing the elements of each "row"
# define function, taking a single integer input (n)
# include the test boggle board array
# return the nth element in the array
# end

# Initial Solution
def get_row(element_pos)
	boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
    raise ArgumentError.new("Row doesn't exist!") if element_pos>boggle_board[0].length-1
    return boggle_board[element_pos]

end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
p get_row(1) == ["i", "o", "d", "t"]
p get_row(0) == ["b", "r", "a", "e"]

# Reflection 
# What parts of your strategy worked? What problems did you face?
# My entire strategy worked. The only problem I may have had was overthinking the instructions :)
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# None.
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


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# input: integer signifying the row in the array
# output: an array containing the elements of each "column"
# define function, taking a single integer input (n)
# include the test boggle board array
# loop through each element of boggle board
# push nth element of the element to a final output array
# end loop
# return the final output array
# end

# Initial Solution
def get_col(element_pos)
	boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
    raise ArgumentError.new("Row doesn't exist!") if element_pos>boggle_board.length-1
    output_array = []
    boggle_board.each do |x|
    	output_array << x[element_pos]
    end
    return output_array
end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
p get_col(1) == ["r", "o", "c", "a"]

# Reflection 
# What parts of your strategy worked? What problems did you face?
# My entire strategy worked. The problem I faced was refactoring the code...wasn't sure how to
# improve on what I wrote.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# None.
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