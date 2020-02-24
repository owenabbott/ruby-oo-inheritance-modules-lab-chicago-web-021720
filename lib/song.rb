require 'pry'

class Song
  include Paramable
  include Memorable 
  attr_accessor :name
  attr_reader :artist
  extend Extended
  extend Findable


  @@songs = []

  def initialize
    @@songs << self
  end


  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end


end
