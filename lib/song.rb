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
    artist_name, song_name, genre_name = filename.chomp(".mp3").split(" - ")
    song.artist = Artist.find_or_create_by_name(name)
    song.save 
  end
end