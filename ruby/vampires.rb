puts 'How many employees will be processed'
total_employees = gets.to_i


total_employees.times do

	puts 'What is your name?'
	name = gets.chomp.downcase

	puts 'How old are you?' 
	age = gets.to_i

	puts 'What year were you born?'
	year = gets.to_i
	actual_age = 2016 - year

	puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
	bread = gets.chomp.downcase

	puts 'Would you like to enroll in the company’s health insurance?'
	insurance = gets.chomp.downcase

  puts 'Please list your allegies one at a time. When you are finished, please enter done.'
  sunshine_allergy = false
  valid_input = false

  until valid_input

    allergy = gets.chomp.downcase

    if allergy == 'sunshine'
      sunshine_allergy = true
      valid_input = true
    elsif allergy == 'done'
      puts 'ok'
      valid_input = true
    end
  end

	if sunshine_allergy
    puts 'Probably a vampire'
 	elsif age == actual_age && bread == 'yes' || insurance == 'yes'
	  puts 'Probably not a vampire'
	elsif age != actual_age && bread == 'no' || waivers == 'no'
	  puts 'Probably a vampire'
	elsif age != actual_age && bread == 'no' && insurance == 'no'
	  puts 'Almost certainly a vampire'
	elsif name == 'drake cula' || name == 'tu fang'
	  puts 'Definitely a vampire'
	else
	  puts 'Results inconclusive'
	end
	
end


 
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."







