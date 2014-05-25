# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a 16 digit integer
# Output: boolean operator (true or false)
# Steps:
# begin class credit card
# define init method, taking a single 16 digit integer as its argument
# assert that the input integer is 16 digits long
# set parameter to instance variable
# end
# begin check_card method, taking no parameters
# pass the integer to a string
# create a "sum" variable, set it equal to 0
# begin loop, moving from position 0 to 15
# if the element is odd, push it to the output array
# else
# multiply the element at position i by 2
# if the product of the calculation has 2 digits
# split digits and push each individual digit to output array
# else
# push it to the output array
# end
# end loop
# generate a "sum" variable, set it equal to 0
# iterate through each element of the output array
# add each element in the output array to the variable sum
# end loop
# return "valid credit card number" if sum modulo 10 == 0
# end method
# end class


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(card_num)
		raise ArgumentError.new("input must be an integer") unless card_num.is_a?(Integer)
		raise ArgumentError.new("integer must have 16 digits") unless card_num.to_s.length==16
		@card_num = card_num
	end

	def check_card
		sum = 0
		working_string = @card_num.to_s.reverse
		for i  in (1..15).step(2)
			sum += working_string[i-1].to_i
			temp_str = working_string[i].to_i * 2
			# split temporary string into 2 characters if stringlength is >2, then add the two numbers together
			temp_str = temp_str.to_s.split('').map(&:to_i).reduce(:+) if temp_str.to_s.count==2
			sum += temp_str
		end
		return sum % 10 == 0
	end

end



# 4. Refactored Solution

class CreditCard
	def initialize(card_num)
		raise ArgumentError.new("input must be an integer") unless card_num.is_a?(Integer)
		raise ArgumentError.new("integer must have 16 digits") unless card_num.to_s.length==16
		@card_num = card_num
	end

	def check_card
		sum = 0
		working_string = @card_num.to_s.reverse
		for i  in (1..15).step(2)
			sum += working_string[i-1].to_i
			temp_str = working_string[i].to_i * 2
			# split temporary string into 2 characters the value is greater than 9, then add the two numbers together
			temp_str = temp_str.to_s.split('').map(&:to_i).reduce(:+) if temp_str>9
			sum += temp_str
		end
		return sum % 10 == 0
	end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
card = CreditCard.new(4408041234567893)
p card.check_card == true

card = CreditCard.new(4408041234567892)
p card.check_card == false



# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# Originally, I was on the ropes between trying to push everything to new arrays and then do the
# calculations, or simply maintaining a simple integer variable that agreggates the values of each calculation.
# When introducing new arrays became to onerous, I switched to the second strategy. It was tough
# to figure out how to split and get everything (the map(&:to_i) and the reduce(:+) methods were
# clutch in figuring out the issue), but once I figured it out, it made sense.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# I wasn't sure how best to convert string elements (necessary to split up the double-digit calculations)
# back into integers, but the map(&:to_i) was good. From there, figuring out an easy way to add the
# two numbers was challenging, but cohort peeps who had previous seen the problem helped guide me 
# to good methods to use.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I figured out how to use the map and reduce methods.
# 
# Did you learn any new skills or tricks?
# See prior question's answer!
# 
# How confident are you with each of the Learning Competencies?
# Mezzo-mezzo, eh? :) On the whole, I think I'm doing alright. It's just a matter of additional
# exposure.
# 
# Which parts of the challenge did you enjoy?
# I enjoyed conceptualizing how to solve the problem
# 
# Which parts of the challenge did you find tedious?
# finding methods that helped me achieve the goals I had set out to achieve was tedious only because
# I spent more time researching than I did writing code!
