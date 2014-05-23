# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].

# EXPLANATION OF require_relative
# require_relative is basically like require, except:
# "The files we reference are relative to the file in which the actual calls are made, 
# rather than the folder in which the script was executed in."
# 
# Basically, it means that it's going to be looking for files with respect to where the actual
# calls are made. In the case of this challenge, for example, b/c it's running the file in
# /Users/Ariel/dbc/phase_0/phase_0_unit_2/week_5/5_virus_predictor/,
# it's also going to look for state_data.rb in that directory.

require_relative 'state_data'

class VirusPredictor
  # initialize using the
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  # The scope of the instance variables are local to the the class. I don't think this can be
  # refactored...the inputs make sense to me.
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths
    speed_of_spread
  end

  # Here, private is basically saying that anything that happens between where private is stated and its end can only be called
  # by methods within this class. Basically, if I tried to use the VirusPredictor#predicted_deaths or VirusPredictor#speed_of_spread
  # methods outside of where I'm defining the class (e.g. in the Driver Tests), I would get an error message.
  # If we tried cutting and pasting the private keyword above the virus_effects method, we would not be able to call virus_effects in
  # driver code without raising an error.
  private  #what is this?  what happens if it were cut and pasted above the virus_effects method

  def predicted_deaths
    case
      when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
      else number_of_deaths = (@population * 0.05).floor
    end
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    speed = 0.0
    case
    when @population_density >= 200 then speed += 0.5
    when @population_density >= 150 then speed += 1
    when @population_density >= 100 then speed += 1.5
    when @population_density >= 50 then speed += 2
    else speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each_key do |x|
  state = VirusPredictor.new(x, STATE_DATA[x][:population_density], STATE_DATA[x][:population], STATE_DATA[x][:region], STATE_DATA[x][:regional_spread]) 
  state.virus_effects
end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects