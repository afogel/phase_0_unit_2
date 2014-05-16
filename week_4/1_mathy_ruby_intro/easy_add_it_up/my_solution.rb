# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].
# by myself

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# function total
# The input is a single array of integers
# the output is the sum of all the integers in the array


# start with a local variable called n (set n=0)
# begin loop from first to last element of array
# add the first element of the array to n
# end loop
# return n

# function sentence_maker
# The input is a single array
# the output is a concatenation of the array elements into a single sentence, with the first letter capitalized
# and a period after the last word.


# start with a local variable called output, setting output equal to the first element of the array 
# (use .shift method to remove first element from input array)
# check to see whether last element in altered input array ends with a period
# if it does not end with a period, add a period to the end
# iterate over altered input array
# concatenate each additional element (and a space) in input array to output variable
# end loop
# return output variable


# 2. Initial Solution

def total(input_array)
	n = 0
	input_array.each do |x|
		n += x
	end
	return n
end

def sentence_maker(input_array)
	output = input_array.shift.to_s.capitalize
	if input_array[-1][-1]!="."
		input_array[-1] += "."
	end
	input_array.each do |x|
		output = output + " "+ x.to_s
	end
	return output
end


# 3. Refactored Solution

def sentence_maker(input_array)
	output = input_array.shift.to_s.capitalize
	input_array[-1] += "." if input_array[-1][-1]!="."
	input_array.each do |x|
		output = output + " "+ x.to_s
	end
	return output
end


# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# I faced mainly issues of getting back into the swing of thinking in ruby. I tried a for loop, but it turned out
# to not be the loop that worked best...instead, each seemed to be much better for this case. Also, I couldn't
# remember the syntax to substring and grab final elements (either of strings or arrays) in Ruby, so it took some
# searching to get the correct work up.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# I kind of answered the questions I had...the resoures I used were codecademy and the Ruby documentation.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# No concepts that I'm struggling with.
# 
# Did you learn any new skills or tricks?
# Yup! The .shift method pops out the first element. Tres cool.
# 
# How confident are you with each of the Learning Competencies?
# Mostly confident. I'm still a bit afraid of while/until loops. But I didn't really have a need for them in this challenge.
# 
# Which parts of the challenge did you enjoy?
# The easy bits :P
# 
# Which parts of the challenge did you find tedious?
# none.
