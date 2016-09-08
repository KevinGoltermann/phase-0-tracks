#-----------Class----------#
class Santa
	attr_reader :age, :ethnicity, :reindeer_ranking
	attr_accessor :gender, :ethnicity

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type} cookie"
	end

#-----------3 attribute changing methods-----#
	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking << @reindeer_ranking.delete(reindeer)	
	end

	# def gender=(new_gender)
		# @gender = new_gender
	# end

#-------2 getter methods--------#
	# def age
		# @age	
	# end

	# def ethnicity
		# @ethnicity
	# end


end

#-----------Driver Code-------#
 #santa = Santa.new("blue", "here")
 #santa.speak
 #santa.eat_milk_and_cookies("chocolate chip")
 #p santa.celebrate_birthday
 #p santa.get_mad_at("Dasher")
 #p santa.gender = "My new gender"
 	


#----------Driver code for  random santas-----#
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["here", "there", "where", "nowhere"]

santas = []

20.times do |i|
	santas << Santa.new(gender.sample, ethnicity.sample)
	rand(140).times {santas[i].celebrate_birthday}
end

santas.each do |santa|
	puts "Age: #{santa.age}"
	santa.ethnicity = ethnicity.sample
	puts "Ethnicity: #{santa.ethnicity}"
	santa.gender = gender.sample
	puts "Gender: #{santa.gender}"
	reindeer = santa.reindeer_ranking.sample
	puts "Mad at: #{reindeer}"
	puts "================="

end

