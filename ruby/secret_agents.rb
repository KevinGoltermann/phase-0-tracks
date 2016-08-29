# assign alphabet variable
ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def encrypt(input)
  # initialize initial output
  output = ''
  # iterate through each character in input
  for i in 0..(input.length - 1)
    # get the current letter
    current_letter = input[i]
    # if current letter is not a space
    if current_letter != ' '
      # get the index of the current letter
      letter_index = ALPHABET.index(current_letter)
      # handle edge case for Z 
      if letter_index == 25 
        letter_index = -1
      end
      # append the next letter to the output
      output += ALPHABET[letter_index + 1]
    # else if current letter is a space
    else
      output += ' '
    end
  end
  
  # return encrypted output string
  return output
end

def decrypt(input)
  # initialize initial output
  output = ''
  # iterate through each character in input
  for i in 0..(input.length - 1)
    # get the current letter
    current_letter = input[i]
    # if current letter is not a space
    if current_letter != ' '
      # get the index of the current letter
      letter_index = ALPHABET.index(current_letter)
      # handle edge case for A 
      if letter_index == 0 
        letter_index = 26
      end
      # append the next letter to the output
      output += ALPHABET[letter_index - 1]
    # else if current letter is a space
    else
      output += ' '
    end
  end
  
  # return decrypted output string
  return output
end

def main
  # ask whether running encrypt vs. decrypt
  puts 'Enter 1 to encrypt a message, enter 2 to decrypt a message:'
  method = gets.chomp

  if method == '1'
    # ask for initial input to encrypt
    puts 'Enter a password to encrypt:'
    puts encrypt(gets.chomp.downcase)
  elsif method == '2'
    puts 'Enter a password to decrypt:'
    puts decrypt(gets.chomp.downcase)
  else
    puts "Sorry, didn't understand that!"
  end
  
  return true
end

# call main program
main

=begin
p encrypt("abc")
p encrypt("zed")
p decrypt("bcd")
p decrypt("afe")
=end

# decrypt(encrypt("swordfish"))
#This works because it is essentally cancelling out both of the methods. The original code to encrypt the message is placeed in a method to do the opposte of what encrypt does, so the end result is back where we started. 



