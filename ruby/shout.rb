=begin

module Shout
	
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end
	
	def self.yelling_happily(words)
		words + " :)" + " :)" + " :)"	
	end
	
end

=end

#------------Mixin---------#
module Crowd

	def pump_up(words)
		words.upcase + "!!!!!!!!"
	end

	def quiet(words)
		words.downcase + "...."
	end
		
end

class Offense
	include Crowd
end

class Defense
	include Crowd
end

#---------Driver Code---------#
puts Offense.new.pump_up("get loud")
puts Offense.new.quiet("*Calling play*")
puts Defense.new.pump_up("Stop them")
puts Defense.new.quiet("*Injury on the field*")