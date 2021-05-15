class Song
attr_accessor :name, :artist, :genre

  @@count = 0
  def initialize
    @@count+= 1
  end

  def self.count
    @@count
  end

  @@genres = [ ]
  def self.genres
    @@genres << genre unless @@genres.include?(genre)
    self.genres.count
  end
  
    @@artists = [ ]
  def self.artists
    @@artists << artist unless @@artists.include?(artist)
    self.artists.count
  end

  def self.genre_count
    @@genre_count = {"genre" => count}
  end

end
