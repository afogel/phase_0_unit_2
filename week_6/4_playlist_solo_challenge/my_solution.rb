# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode



# Initial Solution
class Song
	attr_reader :title
	attr_reader :artist

	def initialize(title, artist, play = false)
		@title = title
		@artist = artist
		@play = play
	end

	def play
		@play = true
	end
end

class Playlist
	def initialize(*p)
		@songlist = p
	end

	def add(*p)
		p.each do |x|
			@songlist << x
		end
	end

	def remove(*p)
		p.each do |x|
			@songlist.delete(x)
		end
	end

	def num_of_tracks
		return @songlist.length
	end

	def includes?(song)
		return @songlist.include?(song)
	end

	def play_all
		@songlist.each {|x| x.play}
	end

	def display
		p "The songs in your playlist are:"
		@songlist.each do |x|
			p "-#{x.title}, by #{x.artist}"
		end
	end
end



# Refactored Solution

class Song
	attr_reader :title
	attr_reader :artist

	def initialize(title, artist, play = false)
		@title = title
		@artist = artist
		@play = play
	end

	def play
		@play = true
	end

	def stop
		@play = false
	end
end

class Playlist
	def initialize(*p)
		@songlist = p
	end

	def add(*p)
		p.each { |x| @songlist << x}
		end
	end

	def remove(*p)
		p.each { |x| @songlist.delete(x) }
		end
	end

	def num_of_tracks
		return @songlist.length
	end

	def includes?(song)
		return @songlist.include?(song)
	end

	def play_all
		@songlist.each {|x| x.play}
	end

	def display
		p "The songs in your playlist are:"
		@songlist.each do |x|
			p "-#{x.title}, by #{x.artist}"
		end
	end
end




# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 
# What parts of your strategy worked? What problems did you face?
# Most parts of my strategy worked, but one issue that encountered (and didn't come up with a solution)
# was how to handle a playlist when there are no song durations/you have no idea when one song is over
# and when it's appropriate to start the next one. Without that information, it's unclear how best
# to model this class.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# How do you use include multiple parameters without explicitly stating how many you are going to
# include? I found the answer on stack overflow.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# No concepts are giving me troubles.
# 
# Did you learn any new skills or tricks?
# Yup! It was cool to use the * operator in the argument list in order to allow for multiple
# arguments to be included in that parameter's spot. Whatever follows the asterisk is the name of
# the Array in which the multiple variables are stored.
# 
# How confident are you with each of the Learning Competencies?
# very.
# 
# Which parts of the challenge did you enjoy?
# This was a fun challenge, cute but not too taxing.
# 
# Which parts of the challenge did you find tedious?
# None.