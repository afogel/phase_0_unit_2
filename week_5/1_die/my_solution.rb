# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: an integer greater than 0
# Output: N/A...creates an object and two methods for that type of object
# Steps:

# Define initialize method, taking a single integer parameter
# If the parameter is less than 1
# raise an Argument Error
# then define the instance variable sides based the parameter
# end function
# define the sides method, with no parameters
# return the instance variable sides
# end method
# define the roll method, with no parameters
# return a random number between 1 and the number of sides
# end method


# 3. Initial Solution

class Die
  def initialize(sides)
  	unless sides>=1
  		raise ArgumentError.new("Die must have at least one side")
  	end

  	@sides = sides
  end
  
  def sides
    return @sides
  end
  
  def roll
    return rand(1..@sides)
  end
end



# 4. Refactored Solution

class Die
  def initialize(sides)
  	raise ArgumentError.new("Die must have at least one side") if sides<1
  	@sides = sides
  end
  
  def sides
    return @sides
  end
  
  def roll
    return rand(1..@sides)
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

# puts Die.new(0)==ArgumentError
die = Die.new(6)
puts die.sides==6
puts die.roll.between?(1, 6)




# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# All parts of the strategy worked. No issues or problems to speak of.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# Do I need to require any modules to call a method that randomizes? The answer was no.
# This page was nice: http://ruby.about.com/od/newinruby191/ss/Generating-Random-Numbers-In-Ruby.htm
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