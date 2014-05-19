# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].
# by myself

# 1. Pseudocode

# What is the input?
# input it a non-negative integer, and an optional "pad value"
# 
# What is the output? (i.e. What should the code return?)
# The output should be an array
# 
# What are the steps needed to solve the problem?
# extend the Array class
# define a new method that takes two parameters, the second of which is optional
# clone the object array to a new array (for the non-destructive method)
# check to see that first parameter (number of elements to pad array with) is larger than the Array object that method is being used on.
# if true, create loop that loops between difference of the current array's length and the desired length of the array
# add the second parameter (the padding value) to the end of the Array object clone.
# end loop
# if false, return the Array object clone
# end method
# 
# define destructive method parameters
# 
# close class


# 2. Initial Solution
class Array
	def pad(array_size, pad_val=nil)
		new_array = self.clone
		if self.length<array_size
			length_dif = array_size - self.length
			length_dif.times do
				new_array.push(pad_val)
			end
			return new_array
		else
			return new_array
		end
	end

	def pad!(array_size, pad_val=nil)
		if self.length<array_size
			length_dif = array_size - self.length
			length_dif.times do
				self.push(pad_val)
			end
			return self
		else
			return self
		end
	end
end



# 3. Refactored Solution

class Array
	def pad!(array_size, pad_val=nil)
		if self.length<array_size
			length_dif = array_size - self.length
			length_dif.times do
				self.push(pad_val)
			end
			return self
		else
			return self
		end
	end

	def pad(array_size, pad_val=nil)
		self.clone.pad!(array_size, pad_val)
	end	
end


# 4. Reflection 
# What parts of your strategy worked? What problems did you face?
# the parts of the strategy that worked were those that measured the length of the input array and
# then pushed the padding value to the array. The problems I faced were writing a non-destructive method.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# I was wondering about how to refer to the object "self", but after searching through stack overflow
# answers, I managed to come up with a good understanding of how to use it.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I'm not sure I understand the difference between a shallow and deep copy...the article I found
# that seemed to address this exact issue was still a bit confusing: http://ruby.about.com/od/advancedruby/a/deepcopy.htm
# 
# Did you learn any new skills or tricks?
# Yup! I learned about the clone command! This challenge was also useful in making me work within
# the context of a class.
# 
# How confident are you with each of the Learning Competencies?
# Very confident with them all :)
# 
# Which parts of the challenge did you enjoy?
# I enjoyed writing the code for this. It went by a bit fast, to be honest!
# 
# Which parts of the challenge did you find tedious?
# None.