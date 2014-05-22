# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)
# 2)

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food)
  #hash made up of keys (strings) "favorite foods", values (integers) are number of units per food
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} 
  
  #declaring counter variables to be returned in final string, set default values to 0
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false #boolean variable that will be used later in a block to raise an exception (or not :P)

  my_list.each_key do |k| #iterate through the hash
    if k == fav_food #if a key is "the favorite food", it means that there's a favorite food in our Hash
      has_fave = true #there is a favorite food
      fav_food = k #set fav_food variable to the fav_food in my_list
    end 
  end
  if has_fave == false # setting condition for the exception
    raise ArgumentError.new("You can't make that food") # raise actual exception if input is not in list of keys
  else # assuming the input is found in the list of keys of the hash
    # set variable fav_food_qty to the value contained within the stupid single-
    # element-array that was created using the Hash#values_at method.
    fav_food_qty = my_list.values_at(fav_food)[0] 
    # if num_of_people is evenly divisible by fav_food_qty
    if num_of_people % fav_food_qty == 0
      # set num_of_food equal to num_of_people / fav_food_qty
      num_of_food = num_of_people / fav_food_qty
      # returns a string including the values associated with the named 
      # variables
      return "You need to make #{num_of_food} #{fav_food}(s)."
      # if num_of_people is not evenly divisible by the fav_foot_qty
    else num_of_people % fav_food_qty != 0
      # 
      while num_of_people > 0
      # if the number of people divided by 8 is greater than 0
        if num_of_people / my_list["pie"] > 0
          # set number of pies equal to number of people divided by 8
          # (rounded down due to integer division)
          pie_qty = num_of_people / my_list["pie"]
          # sets the variable num_of_people to the remainder of the first 
          # computation (finding pie quantity)
          num_of_people = num_of_people % my_list["pie"]
        #  if number of people divided by 6 is greater than zero
        elsif num_of_people / my_list["cake"] > 0
          # set number of pies equal to number of people divided by 6
          # (rounded down due to integer division)
          cake_qty = num_of_people / my_list["cake"]
          # sets the variable num_of_people to the remainder of the second 
          # computation (finding cake quantity)
          num_of_people = num_of_people % my_list["cake"]
        else # if not the above
          # sets number of cookies equal to the number of people
          cookie_qty = num_of_people
          # sets number of people equal to zero
          num_of_people = 0
        end
      end
    # returning final string  
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
p bakery_num(47, "pie") == "You need to make 5 pie(s), 1 cake(s), and 1 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 