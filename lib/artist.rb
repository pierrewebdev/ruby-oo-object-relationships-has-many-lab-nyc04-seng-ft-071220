require "pry"
class Artist #contruct it in conjunction with the song class
  #class variable to store all artists
  @@all = []
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    self.songs = Song.all.select {|song|song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    song_name.artist = self
  end
  
  def self.song_count
    total = 0
    #binding.pry
    @@all.each {|artist|total += artist.songs.count}
    total
  end
  
  
end