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