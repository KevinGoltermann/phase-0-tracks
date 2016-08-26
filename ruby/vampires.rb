puts "How many employees will be processed"
total_employees = gets.to_i

total_employees.times do

	puts "What is your name?"
	name = gets.chomp.downcase

	puts "How old are you?" 
	age = gets.to_i

	puts "What year were you born?"
	year = gets.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	bread = gets.chomp.downcase


	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp.downcase


	actual_age = 2016 - year

	


	if age == actual_age && bread == 'yes' || insurance == 'yes'
	  puts "probably not a vampire"
	elsif age != actual_age && bread == 'no' || waivers == 'no'
	  puts "probably a vampire"
	elsif age != actual_age && bread == "no" && insurance == "no"
	  puts "Almost certainly a vampire"
	elsif name == 'drake cula' || name == 'tu fang'
	  puts "Definitely a vampire"
	else
	  puts "results inconclusive"
	end
	
end
