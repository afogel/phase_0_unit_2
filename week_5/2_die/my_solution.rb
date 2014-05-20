# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: an array
# Output: N/A...creates an object and two methods for that type of object
# Steps:

# Define initialize method, taking a single Array as a parameter
# If the parameter has fewer than 1 element
# raise an Argument Error
# then define the instance variable sides based the parameter
# end function
# define the sides method, with no parameters
# return the number of elements within the input Array
# end method
# define the roll method, with no parameters
# return a random element from within the Array
# end method


# 3. Initial Solution

class Die
  def initialize(labels)
  	raise ArgumentError.new("Die must have at least one side") if labels.length<1
  	@labels = labels
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels.sample
  end
end



# 4. Refactored Solution

class Die
  def initialize(labels)
  	raise ArgumentError.new("Die must have at least one side") if labels.length<1
  	@labels = labels
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels.sample
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
puts die.sides==6
puts die.roll.between?('A','F')




# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# All parts of the strategy worked. No issues or problems to speak of.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# Only syntax questions re: the Array#sample method. I used Ruby Docs as the resource.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# None.
# 
# Did you learn any new skills or tricks?
# Not really.
# 
# How confident are you with each of the Learning Competencies?
# confident.
# 
# Which parts of the challenge did you enjoy?
# This was a very quick challenge for me.
# 
# Which parts of the challenge did you find tedious?
# None.