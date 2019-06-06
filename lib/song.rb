=begin
  Song
  #new
    is initialized with an argument of a name (FAILED - 18)
    pushes new instances into a class variable called @@all upon initialization(FAILED - 19)
  @@all
    is a class variable set to an array (FAILED - 20)
  .all
    is a class method that returns an array of all song instances that have been created (FAILED - 21)
  #name
    has a name (FAILED - 22)
  #artist
    belongs to an artist (FAILED - 23)
  #artist_name
    knows the name of its artist (FAILED - 24)
    returns nil if the song does not have an artist (FAILED - 25)
=end

class Song 
  attr_accessor :name, :artist  # :artist => belongs to an artist, used in the artist.rb 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self  # pushes new instances (self) into @@all
  end
  
  def self.all    # need self in order to work. Returns an array of all song instances created
    @@all
  end
  
  def artist_name
    artist.name unless artist == nil
  end
  
end