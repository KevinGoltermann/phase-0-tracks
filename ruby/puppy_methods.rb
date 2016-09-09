class Puppy



	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(number)
		number.times { puts "woof!" }
	end

	def roll_over
		puts "*rolls over*"
	end

	def dog_years(human_years)
		human_years*7
	end

	def high_five
		puts "*gives high five"
	end

	def initialize
		puts "Initializing new puppy instance ..."
	end

end

spot = Puppy.new
puts spot.fetch("ball")
puts spot.speak(3)
puts spot.roll_over
puts spot.dog_years(5)
puts spot.high_five


class Cat

	def initialize
		puts "Initialized cat class"
	end

	def meow
		puts "Meow"
	end

	def jump(number)
		puts "The cat jumped #{number} feet!"
	end

end

tiger = Cat.new
puts tiger.meow
puts tiger.jump(5)

cat_array = []

50.times do |cat|
	cat_array << Cat.new
end

cat_array.each do |cat|
	tiger.meow
	tiger.jump(5)
end



