# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].
# with Arik

# 2. Pseudocode

# Input: a single array of names
# Output: 3 arrays, containing 6 arrays each with four elements in each array
# Steps:

# define the method
# shuffle the cohort array
# 


# 3. Initial Solution

def create_groups(cohort_array)
    unitnum = 1
    phase0_grps = Hash.new
    while unitnum<4
        shuffled_array = cohort_array.shuffle.each_slice(4).to_a
        unit = Hash.new
        for i in 1..shuffled_array.length
            unit["unit#{unitnum}_grp#{i}".to_sym] = shuffled_array[i-1]
        end
        phase0_grps["unit#{unitnum}".to_sym] = unit
        unitnum+=1
    end
    return phase0_grps
end


# 4. Refactored Solution

def create_groups(cohort_array)
    unitnum = 1
    phase0_grps = Hash.new
    while unitnum<4
        shuffled_array = cohort_array.shuffle.each_slice(4).to_a
        unit = Hash.new
        for i in 1..shuffled_array.length
            # reduce redundancy in key titles
            unit["grp#{i}".to_sym] = shuffled_array[i-1]
        end
        phase0_grps["unit#{unitnum}".to_sym] = unit
        unitnum+=1
    end
    return phase0_grps
end




# 1. DRIVER TESTS GO BELOW THIS LINE
cohort_array = ["Albert Alquisola", "Alex White", "Allison Reilly","Ariel Fogel", "Arik Gadye","Brian Junio","Chandler HC","Eric Nolte","Ernie Salazar","Gannon Curran","Hethe Berg","Jared Chevalier","John Akers","Justin Harnoss","Lauren Kroner","Matthew Darin","Michele Murphy","Morgan O'Leary","Patrick Reynolds","Premila Anand","Puru Dahal","Steven Leu","Tony Leung","William Pangestu"]
groups = create_groups(cohort_array)

puts groups[:unit1]
puts groups[:unit2]
puts groups[:unit3]

groups.each do |key, value|
	# Keys => :unit1, :unit2, :unit3
	# Values => :unit1_grp1,...,:unit1_grp6,...
	puts key
	value.each do |k, v|
		puts v.length==4
	end
	puts ""
end






# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# I faced problems trying to get the hash keys to be the values that I was looking for.
# I also had a hard time conceptualizing how to best organize the data, but finally settled on 
# nesting hashes and arrays.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
#  I was unsure about how to structure the data, but I talked it out with a cohort member and we came up
# with a good solution :)
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# naming conventions, mainly? Dunno, not too much with this challenge.
# 
# Did you learn any new skills or tricks?
# yes! the Array#each_slice method is a new one, but very cool! I look forward to using again in the future.
# 
# How confident are you with each of the Learning Competencies?
# Most of them-not fully confident with psuedocoding a hard problem like this and I'm a bit late to the party
# on writing destructive vs. nondestructive methods, but all in due time.
# 
# Which parts of the challenge did you enjoy?
# Writing the code and getting the code to work.
# 
# Which parts of the challenge did you find tedious?
# None.
