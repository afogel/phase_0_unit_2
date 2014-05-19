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
# What parts of your strategy worked? What problems did you face?
# Reversing the the string was a really good way to work through the issue, then iterating through
# each character and, upon reaching a certain character, adding a comma.
# I faced one major problem--I didn't have enough foresight initially to realize that if I wasn't
# careful enough, integers with length that were completely divisible by 3 would add a comma at the end.
# That is to say, separate_comma(100000) => ",100,000" originally, which was totally wrong.

# What questions did you have while coding? What resources did you find to help you answer them?
# How do I refactor something that looks so clean! I knew that my code was bulky, but it took a
# long time to notice superfluous code.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Refactoring...I think it's simply a matter of further exposure, though.
# 
# Did you learn any new skills or tricks?
# Not really, this was in many ways a review of the prior work I've done this week
# 
# How confident are you with each of the Learning Competencies?
# very confident.
# 
# Which parts of the challenge did you enjoy?
# coming up with a strategy to tackle the problem and executing it.
# 
# Which parts of the challenge did you find tedious?
# Refactoring. It's mainly tedious because it's just hard to see.