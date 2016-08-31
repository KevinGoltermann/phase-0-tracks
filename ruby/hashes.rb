puts "Welcome to the Interior Decorator"

#-------asking user for input and converting it----------#
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "How many children do you have?"
children = gets.to_i

puts "What is your desired decor theme?"
decor_theme = gets.chomp

#----------putting user data into a hash---------#
user_data = { name: name, age: age, children: children, decor_theme: decor_theme}

#---------printing hash back out---------#
puts user_data.inspect

#---------opportunity to update key-----------#
puts "Please put cateogry you would like to update (name, age, children, decor_theme). If you do not need to update, please enter 'done'."
update = gets.chomp

if update == "done"
	puts "Thanks for using the Interior Decorator"

elsif update == "name"
	puts "What is your name?"
	name = gets.chomp

elsif update == "age"
	puts "How old are you?"
	age = gets.to_i

elsif update == "children"
	puts "How many children do you have?"
	children = gets.to_i

elsif update == "decor_theme"
	puts "What is your desired decor theme?"
	decor_theme = gets.chomp
end

#----------putting updated user data into a hash---------#
user_data = { name: name, age: age, children: children, decor_theme: decor_theme}

#---------printing hash back out---------#
puts user_data.inspect
	

	

	
	