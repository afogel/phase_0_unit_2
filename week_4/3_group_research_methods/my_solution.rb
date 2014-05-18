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

def my_hash_finding_method(source, thing_to_find)
	return_array = []
  	source.each do |key, val|
  		return_array.push(key) if val.include?(thing_to_find)
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

# Person 2
def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


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
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


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
# 
# 
# 