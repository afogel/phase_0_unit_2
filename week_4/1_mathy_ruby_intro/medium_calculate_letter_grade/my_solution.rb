# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].
# by myself.

# 1. Pseudocode

# What is the input?
# The input is a single array of integers, ranging between 0 and 100.
# 
# What is the output? (i.e. What should the code return?)
# The code should return a letter grade based on the average score.
# 
# What are the steps needed to solve the problem?

# define method, taking in a single input
# define a local variable, sum, that is equal to 0
# define a loop over each element of the input array
# add each element to the local variable `sum'
# end loop
# calculate the arithmetic mean by dividing the `sum' variable by the number of elements in the input array
# if the mean is >=90, return an "A"
# if the mean is >=80, return a "B"
# if the mean is >=70, return a "C"
# if the mean is >=60, return a "D"
# otherwise, return an "F"
# end function


# 2. Initial Solution

def get_grade(input_array)
	sum = 0
	input_array.each do |x|
		sum += x
	end
	av_score = sum/input_array.length
	return "A" if av_score>=90
	return "B" if av_score>=80
	return "C" if av_score>=70
	return "D" if av_score>=60
	return "F" if av_score<60
end


# 3. Refactored Solution

def get_grade(input_array)
	sum = 0
	input_array.each do |x|
		sum += x
	end
	av_score = sum/input_array.length
	return "A" if av_score>=90
	return "B" if av_score>=80
	return "C" if av_score>=70
	return "D" if av_score>=60
	return "F" if av_score<60
end

# 4. Reflection 
# 
# What parts of your strategy worked? What problems did you face?
# All parts worked. This was easier than the first challenge for me.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# No questions. I did not need to refer to any resources when I wrote this code.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None. Easy peezy lemon squeezy.
# 
# Did you learn any new skills or tricks?
# Nope. Same old.
# 
# How confident are you with each of the Learning Competencies?
# Very.
# 
# Which parts of the challenge did you enjoy?
# It was fun to finish it fast and write DRY code the first time.
# 
# Which parts of the challenge did you find tedious?
# N0ne.