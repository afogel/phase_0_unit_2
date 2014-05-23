# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 






# Our Refactored Solution

def bakery_num(num_of_people, fav_food)
	units_per_food = {"pie" => 8, "cake" => 6, "cookie" => 1}
	raise ArgumentErrow.new("Ruh Roh I cannot make that!") unless units_per_food.include?(fav_food)

	#for cases when num of people is evenly divided by units of favorite foods
	if num_of_people % units_per_food[fav_food] == 0
		num_of_food = num_of_people / units_per_food[fav_food]
		return "You need to make #{num_of_food} #{fav_food}(s)."

	#for cases when num of people is not evenly divided by units of favorite foods
	else
		units_per_food.each do |food, num|
			if num > units_per_food[fav_food]
				instance_variable_set("@#{food}_qty", 0)
			else
				instance_variable_set("@#{food}_qty", num_of_people / units_per_food[food])
				num_of_people %= units_per_food[food]
			end
		end
		return "You need to make #{@pie_qty} pie(s), #{@cake_qty} cake(s), and #{@cookie_qty} cookie(s)."
	end
end






#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 
# What parts of your strategy worked? What problems did you face?
# My entire strategy worked. I wasn't originally sure on how to use a loop to appropriately declare
# different variable names, but I managed to get around that using the instance_variable_set method
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# The questions I had while coding were the problems I mentioned with my strategy. I found a 
# good answer using stack overflow :) Good ol' stack overflow.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# No concepts are giving me troubles.
# 
# Did you learn any new skills or tricks?
# Yeah! I mean, I think that my solution using instance_variable_set was a clever hack,
# but I don't know how kosher it actually is to use instance variables to accomplish that goal.
# But it's a neat trick!
# 
# How confident are you with each of the Learning Competencies?
# very.
# 
# Which parts of the challenge did you enjoy?
# I really enjoyed refactoring the code...it was super satisfying to get rid of so much
# unnecessary code!
# 
# Which parts of the challenge did you find tedious?
# The tedious part of this challenge was simply to go through each line of bad code and comment
# on each line. It mainly felt so tedious because so much of the code was tedious :)


