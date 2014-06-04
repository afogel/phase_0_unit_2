# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer

	attr_reader :contents

	# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item
	end

	# pop is removing the last item from the array @contents and setting the parameter
	# "item" equal to that last element.
	def remove_item(item = @contents.pop) #what is `#pop` doing?
		@contents.delete(item)
	end

	def dump  # what should this method return?
		puts "Your drawer is empty."
		@contents.clear
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end

class Silverware
	attr_reader :type

	# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		@clean = true
	end
	
	def clean?
  	return @clean
	end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?


fork = Silverware.new("fork")
silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
puts fork.clean?

# DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# My entire strategy worked.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# I didn't have any questions.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I was a bit confused what the story was with trying to remove the fork from the drawer, but I
# later figured out that I was trying to remove an object that hadn't been created, which was the
# source of the final error. All I needed to do was initialize the fork object in the silverware
# class.
# 
# Did you learn any new skills or tricks?
# Not really.
# 
# How confident are you with each of the Learning Competencies?
# very.
# 
# Which parts of the challenge did you enjoy?
# This was also a fairly easy challenge for me. But I have to say that error driven development
# is definitely something that resonates with me to a certain extent. I don't mind the brute force
# strategy of running and debugging on the fly. But better to still do test-driven development ;)
# 
# Which parts of the challenge did you find tedious?
# None.