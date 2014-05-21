# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: am integer
# Output: a symbol, telling whether guess was correct, high or low
# Steps:
# define the init method, taking a single integer as input
# set an instance variable holding the last guess to nil
# set an instance variable holding the correct answer
# end init method
# 
# define solved? method
# return true if correct answer is equal to last guess
# end solved? method
# 
# define guess method, taking a single integer as an argument
# if last guess>correct answer, return "high"
# if last guess<correct answer, return "low"
# if last guess==correct answer, return "correct"
# end guess method

# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @lastGuess = nil
  end
  
  def solved?
  	return @answer==@lastGuess
  end

  def guess(lastGuess)
  	@lastGuess = lastGuess
  	return :low if @lastGuess<@answer
  	return :high if @lastGuess>@answer
  	return :correct if @lastGuess==@answer
  end
end




# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @lastGuess = nil
  end
  
  def solved?
  	return @answer==@lastGuess
  end

  def guess(lastGuess)
  	@lastGuess = lastGuess
  	return :low if @lastGuess<@answer
  	return :high if @lastGuess>@answer
  	return :correct if @lastGuess==@answer
  end
end






# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)

p game.solved? == false

p game.guess(5) == :low
p game.guess(20) == :high
p game.solved? == false

p game.guess(10) == :correct
p game.solved? == true


# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# My entire strategy worked. The problem I had was knowing how to refactor the DRY code.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# I was wondering whether I needed to use class or instance variables. I read a StackOverflwo article
# on it:http://stackoverflow.com/questions/3802540/difference-between-class-variables-and-class-instance-variables
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
