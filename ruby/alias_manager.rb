#---------first and last name switch--------#
def name_switch(original_name)
  original_name.split.reverse.join(' ')
end


#---------vowel advancing method---------#
def vowel_adv(original_name)
  vowels = ['a', 'e', 'i', 'o', 'u']
  original_name = original_name.split('')
  new_name = original_name.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
      elsif vowels == 'u'
      vowels.replace('a')
    else
      char
    end
  end
  new_name.join
end


#----------constant advancing method----------#
def constant_adv(original_name)
  constants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
  original_name = original_name.split('')
  new_name = original_name.map do |char|
    if constants.include?(char)
      constants.rotate(1)[constants.index(char)]
      elsif constants == 'z'
      vowels.replace('b')
    else
      char
    end
  end
  new_name.join
end

#-------user interface-------#
name = FALSE
valid_input = FALSE

until valid_input

puts "Please enter names you would like to change. When finished, enter 'done'"
	original_name = gets.chomp.downcase
	puts name_switch(vowel_adv(constant_adv(original_name)))
	name = TRUE
	valid_input = FALSE
	output = name_switch(vowel_adv(constant_adv(original_name)))
	user_data = {original_name: original_name, output: output}
	puts user_data
	puts "#{output} is also known as #{original_name}"
	
	if original_name == "done"
		puts "Thanks"
		valid_input = true
	end
end

#--------storing aliases-----#
output = name_switch(vowel_adv(constant_adv(original_name)))
user_data = {original_name: original_name, output: output}
puts user_data
puts "#{output} is also known as #{original_name}"





