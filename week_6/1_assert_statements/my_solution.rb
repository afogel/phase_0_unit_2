# U2.W6: Testing Assert Statements

# I worked on this challenge with Stephen Estrada


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin
def assert method
raise runtime error with "Assertion failed!" unless the the block
provided to the assert method is true
end method
=end


# 3. Copy your selected challenge here
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



# 4. Convert your driver test code from that challenge into Assert Statements
assert {bakery_num(24, "cake") == "You need to make 4 cake(s)."}
assert {bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."}
assert {bakery_num(24, "cookie") == "You need to make 24 cookie(s)."}
assert {bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."}
assert {bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."}
assert {bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)."}


# 5. Reflection
# What parts of your strategy worked? What problems did you face?
# My entire strategy worked. The problem I had was knowing how to refactor the DRY code.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# I didn't have any questions. This was a straightforward challenge.
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
