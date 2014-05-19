# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# define separate_comma method, taking a single integer parameter
# convert integer to a string and find the length
# if length is greater than 3
# create a counter, set equal to 1
# create variable output_number
# convert input number to a string and reverse, iterate over each character
# if the counter % 3==0 & it's not the 
# add the number followed by a "," to the variable output_number
# else
# add the number to the var output_number
# end loop
# return the output_number, reversed
# otherwise
# return the original input
# end


# 2. Initial Solution
=begin
def separate_comma(number)
	input_length = number.to_s.length
	if input_length>3
		counter = 1
		output_number = ""
		number.to_s.reverse.each_char do |x|
			if counter % 3 == 0 && number.to_s.length!=counter
				output_number = output_number + x + ","
			else
				output_number += x
			end
			counter +=1
		end
		return output_number.reverse
	else
		return number.to_s
	end
end
=end


# 3. Refactored Solution
def separate_comma(number)
	counter = 1
	output_number = ""
	number.to_s.reverse.each_char do |x|
	    output_number += x
		output_number += "," if counter % 3 == 0 && number.to_s.length!=counter
		counter +=1
	end
	return output_number.reverse
end


# 4. Reflection 