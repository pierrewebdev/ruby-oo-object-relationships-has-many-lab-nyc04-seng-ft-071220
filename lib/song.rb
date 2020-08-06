require "pry"
class Song
  #class variable for all instances of Song
  @@all = []
  
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end
  
  #returns all instances stored in class variable "@@all"
  def self.all
    @@all
  end
  
  
  def artist_name
    if self.artist != nil
      @artist.name
    end
  end
  #binding.pry
  
  
end


