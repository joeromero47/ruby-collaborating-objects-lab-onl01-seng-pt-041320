class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.chomp(".mp3").split(" - ")
    song.artist = filename.chomp(".mp3").split(" - ")
    song 
  end
end