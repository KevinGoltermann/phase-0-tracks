# Virus Predictor

# I worked on this challenge [by myself, with: Andrew van Beek ].
# We spent [2] hours on this challenge. 

# EXPLANATION OF require_relative: require_relative is the command that is responsible for calling another file to load. Require is the long way to do require_relative
#
#
require_relative 'state_data'

class VirusPredictor


# initialize method is responsible for creating instances and taking the vatiable given 

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


# Responsible for printing both of the statements together, since they don't make sense if they're alone.
  

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  
private

# Taking the info from the other file, comparing to the if statement, and doing to correspsonding math. Then prints a statement with the state and the answer to the equation.
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Same thing as method above, except instead of doing math, it adds the correspinding speed to the speed variable. And then prints the statement.
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    if @population_density

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, hashes|
  call = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  call.virus_effects
end
end


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section

# In the state_data file, the hash uses both keys and symbols. This is because there is a hash imbedded inside of another hash.

# require_relative is the command that is responsible for calling another file to load. Require is the long way to do require_relative

# We used .each to iterate through out hash since we wanted to apply our methods to each state. You can also use .each_value and .each_key

# What stood out to me was that the aruements that were orignally after each method in virus_effects were not even needed. I forgot this was possible because everything is inside the same class, which means it is accessible everywhere in the class.

# I think that the concept of iterating through a hash was more solidified in this GPS, even though I'm not 100# on it yet. Our guide was really helpful at walking us through it and letting us figure it out on our own.
