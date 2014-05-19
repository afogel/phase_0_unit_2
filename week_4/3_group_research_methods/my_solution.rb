# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  return_array = []
  source.each do |x|
  	return_array.push(x) if x.to_s.include?(thing_to_find)
  end
  return return_array
end

def my_hash_finding_method(source, thing_to_find)
  return_array = []
  source.each do |key, val|
  	return_array.push(key) if val==thing_to_find
  end
  return return_array
end

# Identify and describe the ruby method you implemented. 
# I guess the .each iterator is the only ruby method that I implemented on both the hash and the array.
# I was hoping that I would find something comparable to the `include?' method for hashes (which does exist, but only when looking at keys)
# so that was a bit of a let down.
# Basically, the way to use the .each iterator is by first specifying the object you want to use,
# then adding a .each after. I still feel more comfortable spelling out the entire block, so I proceed
# by using the `do' syntax. The difference between the syntax for a hash and an array is that, because
# an array simply has a single element, you only need to specify one parameter (enclosed by pipes)
# after you write do. A hash, on the other hand, has linked elements, so you have to specify two.
# You may then use the parameter names as if they were variables within the block.

def my_array_modification_method(source, thing_to_modify)
  newArr = []
  newArr = source.collect do |arr_element| 
    if arr_element.is_a? Numeric
      arr_element += thing_to_find
    else
      arr_element
    end
  end
  newArr
end


def my_hash_modification_method(source, thing_to_modify)
  source.each do |k,v| 
    source[k] = v+thing_to_modify
  end
end

# Identify and describe the ruby method you implemented. 
# Psuedocode #1
# my_array_finding_method(i_want_pets, 1) 
# 
# search each array element
# if array element is a number then add 1
# if not do nothing
# return updated array
# Thoughts: It took me awhile to fixe this one initally and I didn't know what I was doing wrong. 
 # Turns out I need to intitiallize the newAray, and set it equal to the source.collect method so I could return it.  
 # Took a long time to figure out what was miising.
# Collect Method takes a block and applies it to each element of self, returning the new elements.
# 
# Psuedocode #2
# my_hash_modification_method(my_family_pets_ages, 2) 
#
# def my_hash_modification_method 
# 2 variables k, v
# set value to equal +1 of current value
# This is a simple each hash method.  It takes each key of the hash and applies a math change to the value, 
# ruturning both new key's and values, although the key is unchanged in this instance.


# Person 3
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
# My Array Deletion
def my_array_deletion_method(source, thing_to_delete)
	source.each {|index| source.delete(index) if index.include?(thing_to_delete)}
end
# My Hash Deletion
def my_hash_deletion_method(source, thing_to_delete)
	source.each {|key, value| source.delete(key) if key.include?(thing_to_delete)}
end
# Why not both?
def my_deletion_method(source, thing_to_delete)
	if source.is_a?(Array)
   		source.each {|index| source.delete(index) if index.include?(thing_to_delete)}
   else
   		source.each {|key, value| source.delete(key) if key.include?(thing_to_delete)}
   	end
end

# Identify and describe the ruby method you implemented. 
=begin
I took it upon myself to combine the two methods into one.  I had them split into two and then 
saw an easy way to make them one with a simple if x.is_a? statement.  I will also include the 
two seperate methods so the driver code below will function properly.

I'm using an Object#is_a?() to ask if my source variable is of the Array class.  Calling this
method will result in a true/false which will be used to lead my if statement.
Example: "Brian".is_a?(String) => true

An iteration method #each was used to loop through the array / hash.
Example: [1,2,3].each {|index| index ** 2} => [1,4,9]

The Array# and Hash# share quite a few methods, for example; #delete() and #include?().  I first 
use the #include?() method to output true/false in order to check against my index if it contains 
the thing_to_delete.  If it does contain what I need to delete, I call the #delete() method and
pass it the argument, index.  
Example: "Willy Wonka".include?("z") => false
Example: ["a", "b", "c"].delete("b") => ["a", "c"]
Example: {key1: value1, key2: value2}.delete(key1) => {key:2 value2}
=end


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# What did you learn about researching and explaining your research to others?
# First, I learned that researching just the right method is hard. There's a lot of really great
# methods out there, so finding one that suits your purposes exactly takes time. That having been said
# there are a ton of great resources available in both the Ruby Docs and other site sthat give
# examples of the implementation of various methods. If you have patience, you might just be rewarded.
# Explaining the research to others is also a bit of a challenge. I try to pretend that others have a
# much more limited understanding of the methods that I used (even though I ultimately settled on a
# commonly used method) and try to be thorough.
# 
# What parts of your strategy worked? What problems did you face?
# I faced some problems trying to identify methods that were defined for both Hashes and Arrays.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# -How can I get Hash#include? to work for values into instead of keys? No resources helped :(
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# No concepts
# 
# Did you learn any new skills or tricks?
# Yup! I used the include method for the first time.
# 
# How confident are you with each of the Learning Competencies?
# Very confident.
# 
# Which parts of the challenge did you enjoy?
# Writing the code and seeing it work.
# 
# Which parts of the challenge did you find tedious?
# Researching for a long time and coming up with nothing that worked exactly as it should.
# 