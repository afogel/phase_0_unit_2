# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].
# John Berry

# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) #define method that takes one parameter/argument
    alphabet = ('a'..'z').to_a #convert range "a" to "z" to an array, set it equal to variable `alphabet'
    # create a temporary array that takes the elements of `alphabet' and shifts the index values by 4   
    # create an array of arrays, where the first element of each nested array comes from the the `alphabet' 
        # array and the second element comes from the temporary alphabet.rotate(4) array.
    # Create a Hash using the Hash#[] syntax, where each key corresponds to the first element of each nested array
        # and each value corresponds to the second element of each nested array.
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    
    # alphabet.zip(rotated_array)
    # [a,b,c,...x,y,z].zip([e,f,g,...b,c,d])
    # [[a,e],[b,f],[c,g],...,[d,z]]
    # Hash[[a,e],[b,f],[c,g],...,[d,z]]

    #create an array of symbols and set it equal to variable `spaces'
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    #calls downcase on sentence and sets it equal to a new variable `original_sentence'
    original_sentence = sentence.downcase
    encoded_sentence = [] #creates an empty array for the encoded sentence
    #iterate through each character `original_sentence', calling each character |element|
    original_sentence.each_char do |element|
      if cipher.include?(element) #if the Hash cipher includes the character as one of its keys:
        encoded_sentence << cipher[element] #push the cipher's value to the array, `encoded_sentence'
      elsif element == ' ' #else if the character is equal to a whitespace
        encoded_sentence << spaces.sample #randomly select an element from the `spaces' array and push it to `encoded_sentence'
      else #otherwise:
        encoded_sentence << element #push the element to the `encoded_sentence' array, unchanged
      end
     end
    
    return encoded_sentence.join #return `encoded_sentence' as a string
end


# Questions:
# 1. What is the .to_a method doing?
# converts the object (e.g. the range of letters in the alphabet) to an array

# 2. How does the rotate method work? What does it work on?
# Moves the index position of each element of an array down by the integer value provided as an argument

# 3. What is `each_char` doing?
# iterating through each character of a string

# 4. What does `sample` do?
# Randomly returns an elements of an array upon which the method is called

# 5. Are there any other methods you want to understand better?
# no

# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# While the code here is concise, we do not feel it is better than our refactored solution. Our code offers easier 
# readability while solving the problem.  

# 7. Is this good code? What makes it good? What makes it bad?
# The code is very DRY.  The code comes up with a very elegant and concise solution for dealing with a tough problem.
# However the code, particularly the cipher = Hash[alphabet.zip(alphabet.rotate(4))] is hard to parse and could do
# a better job in terms of human readability.



# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
# Nope! the white space characters are bound to be different, as they are randomly drawn from the spaces Array.
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# This question doesn't quite apply. No problems really, just some readability issues with code,
# but that was all straightened out after careful research.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# Just questions on the uses of methods. Ruby Docs did the trick.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# No conceptual issues.
# 
# Did you learn any new skills or tricks?
# Yeah! the Array#zip() and Array#rotate() methods were new, and it was cool to see how they 
# worked, especially together. Additionally, this was a really slick way of pairing key pairs
# in arrays and then using the Hash constructor syntax to build a hash of the "paired" array elements.
# 
# How confident are you with each of the Learning Competencies?
# Very confident.
# 
# Which parts of the challenge did you enjoy?
# Researching new methods and being exposed to new ways of solving problems was really enjoyable.
# 
# Which parts of the challenge did you find tedious?
# I thought that annnotating every line of code was a bit tedious. Oh well :)