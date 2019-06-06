=begin
Artist
  #new
    is initialized with a name
  #name
    has an attr_accessor for name
  #songs
    has many songs
  #add_song
    takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
  #add_song_by_name
    takes in an argument of a song name, creates a new song with it and associates the song and artist
  .song_count
    is a class method that returns the total number of songs associated to all existing artists (FAILED - 1)
=end

require 'pry'


class Artist 
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self        # needed to reciprocate; telling the song that it belongs to that artist 
  end
  
  
  def add_song_by_name(name)
    song = Song.new(name)     # creates a new song
    @songs << song            # pushes it to the collection
    song.artist = self        # associates the song to the artist
  end
  
  def self.song_count
    Song.all.length       # needs to call upon the Song class, bring all the songs, and count the length of it
  end
  

end