# U2.W4: Cipher Challenge


# I worked on this challenge with: .
# John Berry


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message) # Defines a method which takes a String parameter
  input = coded_message.downcase.split("") # downcase the input string and place each string character into an array called "input"
  decoded_sentence = [] # Initialize new array to hold the decoded message
                          # define a hash called cipher setting each key to a character in the alphabet and each value to 
                          # corresponding character 4 places before it in the same alphabet.
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # iterating through the input array and calling each element in the array x
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # iterates through each key of the cipher hash
      if x == y  # compares each element of the input array to each key of the cipher hash
        puts "I am comparing x and y. X is #{x} and Y is #{y}." # puts result of comparison to the screen
        decoded_sentence << cipher[y] #pushes value of cipher key into the decoded_sentence array
        found_match = true # sets found_match to true if key matches the element in input array
        break  # breaks when match is found to stop iteration process, improving efficiency and runtime
      # If input value is any of these symbols on line 55, 
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" 
        decoded_sentence << " " # push space character to the decoded_sentence array
        found_match = true # indicates that a match was found
        break # breaks when match is found to stop iteration process, improving efficiency and runtime
      # identifies a range 0 through 9, transforms into array and iterates through to see if number matches element in input array    
      elsif (0..9).to_a.include?(x) 
        decoded_sentence << x # push integer to the decoded_sentence array
        found_match = true # indicates that a match was found
        break  # breaks when match is found to stop iteration process, improving efficiency and runtime
      end 
    end
    if not found_match  # if input array element is not integer, letter, or symbol character denoting a space (i.e punctuation)
      decoded_sentence << x # push element into decoded_sentence array
    end
  end
  decoded_sentence = decoded_sentence.join("") #concatenates all elements of the decoded_sentence array and converts it into a single String
 
  if decoded_sentence.match(/\d+/) #evaluate the string and find all grouped integers within the string
    #For each group of integers found within the string, substitute that number by that number/100
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
  end  
  return decoded_sentence # return the final decoded sentence, with modifications for the numbers    
end

# Your Refactored Solution

# define method that takes in an encoded string as a parameter
# define new array variable `input', which contains each lowercase encoded string character as an individual element
# initialize the decoded sentence array to be used in the process of decoding
# set new variable for the cipher work equal to a range of a to z, then push the range to an array
# iterate through the input array
# if cipher includes the element from the input array
# find index position of the cipher element
# push cipher[index-4] to decoded_sentence array
# else if element from input array is one of the symbol characters
# push a space character to the decoded sentence array
# else if element from the input array is an integer
# push element to decoded sentence
# else
# push unaltered element to decoded_sentence array
# join elements of decoded_sentence array into a single element and convert to a String
# search through string for integers
# substitute integers with their values divided by 100
# return final decoded sentence

def north_korean_cipher(coded_message)
    input = coded_message.downcase.split("")
    decoded_sentence = []
    # create cipher array
    cipher = ("a".."z").to_a
    
    input.each do |x|
        # decode characters if they are letters from a to z
        if cipher.include?(x)
            encoded_position = cipher.rindex(x)
            decoded_sentence << cipher[encoded_position-4]
            
        # decode encoded spaces
        elsif ["@","#","$","%","^","&","*"].include?(x)
            decoded_sentence << " "

        # any other type of character will not be encoded, so simply push to array
        else
            decoded_sentence << x
        end
    end
    decoded_sentence = decoded_sentence.join("")
 
    #find any "exaggerated" numbers and divide by 100 to provide more reasonable estimates
    if decoded_sentence.match(/\d+/)
        decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
    end
    return decoded_sentence
end
        
# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection

# What parts of your strategy worked? What problems did you face?
# All parts of the strategy worked :) The benefits of pair-programming.
 # 
# What questions did you have while coding? What resources did you find to help you answer them?
# The only questions we ran into were about syntax for methods and finding methods that would
# best solve our issues. We used ruby docs primarily, though occasionally we referenced stack overflow.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Still struggling a bit with regexp, but I think with time it'll come.
# 
# Did you learn any new skills or tricks?
# Yeah! using regexp to find parts of strings was pretty neat. Also, I forgot that you can do ranges
# of the alphabet and push that to an array. Neato!
# 
# How confident are you with each of the Learning Competencies?
# Fairly confident, though refactoring is still a process that I hope to improve on.
# 
# Which parts of the challenge did you enjoy?
# reading the code.
# 
# Which parts of the challenge did you find tedious?
# annotating every line
# 