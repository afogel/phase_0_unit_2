# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution
class CreditCard
    
	def initialize(card)
    # create an instance var called @card, convert it to a string, push the string to an array,
    # then use the map method to replace/convert the string elements in the array to Integers
    @card = card.to_s.chars.map{|x| x.to_i}
    # raise an argument error if the input is not 16 characters long
    raise ArgumentError.new("Please enter a 16 digit card number") unless @card.length == 16
	end
    
  def numbers
  	# go through the @card variable and replace each element value using the map! method;
  	# add a "with_index" method to loop through both the array's element contents as well as their
  	# index position
  	@card.map!.with_index do |element,index|
			# if the index position is even, multiply the the element value by 2
			if index.even? == true
				element * 2
			# otherwise, place the element, unchanged, into the element
    	else
				element
			end
  	end
  end
    
  def sum
  	# run the numbers method
		numbers
		# join the elements of the array contained in @card into a single string, split the 
		# string into a new array and transform elements from string charcters to integers, then finally
		# add them up
		@card.join.chars.map{|x| x.to_i}.inject{|x,y| x+y}
  end
    
	def check_card
		# run sum method, then modulo by 10; if there are no remainders, return true
		if sum % 10 == 0
			return true
		# otherwise, return false
    else
			return false
		end
	end
end



# Refactored Solution

class CreditCard
    
	def initialize(card)
		#raise the argument error before initializing instance variable
    raise ArgumentError.new("Please enter a 16 digit card number") unless card.to_s.length == 16
    # just a small shortcut :) you can replace {|x| x.to_i} with (&:to_i)
    @card = card.to_s.chars.map(&:to_i)
	end
  
  # I think it may make more sense to simply have one function called check_card than split it up
  def check_card
  	@card.map!.with_index do |element,index|
			if index.even? == true
				element * 2
    	else
				element
			end
  	end
  	# using the reduce method instead of inject may be a bit easier to read
  	sum = @card.join.chars.map(&:to_i).reduce(:+)
  	# just like the puts statements we use in driver code, it's enough to try to evaluate the statement
  	# and it will return true or false.
  	return sum % 10 == 0
  end

end




# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end

card=CreditCard.new(4408041234567893)
assert { card.check_card==true }

badcard=CreditCard.new(1111111111111111)
assert { badcard.check_card==false }



# Reflection 
# What parts of your strategy worked? What problems did you face?
# All parts of the strategy worked...in alarge part the main thing that I felt I was able to add
# was to consolidate the three separate intermediate methods into a single method (check card).
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# I didn't really have any questions, although there were some times that I was unsure whether I
# should replace the inject method with replace or vice versa. I ultimately decided to for readability
# since I wouldn't have to worry about decyphering the block used by #inject.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I'm not struggling with any concepts per se, but it is challenging to know when code should be
# refactored and when it doesn't need to be.
# 
# Did you learn any new skills or tricks?
# Not really.
# 
# How confident are you with each of the Learning Competencies?
# very.
# 
# Which parts of the challenge did you enjoy?
# This challenge was enjoyable because I got to see other people's code. Ultimately,
# refactoring code seems like a very subjective process with no _true_ right answers.
# As a result, it was difficult to decide how exactly to refactor code that had been originally
# refactored already by someone else.
# 
# Which parts of the challenge did you find tedious?
# Commenting the strategy used by the original author of the code was a bit tedious, but not
# too bad.