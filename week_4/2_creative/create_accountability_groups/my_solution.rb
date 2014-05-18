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

# unit1 = [grp1,...,grp6]   => grp1 = ['name1',...,'name4']
# cohort_array 
=begin
forvalues i = 1(1)6{
    var grp`i' = [arrayblah]
}

#  grp1, grp2,...grp6
=end
for i in 1..shuffled_array.length
    grp`i' = []
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


