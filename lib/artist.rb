require 'pry'

# include Dance 
# attr_accessor :name 
# extend MetaDancing
# extend FancyDance::ClassMethods 
# include FancyDance::InstanceMethods

class Artist
  include Paramable
  include Memorable 
  attr_accessor :name
  attr_reader :songs
  extend Extended
  extend Findable

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end



  def self.all
    @@artists
  end


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
