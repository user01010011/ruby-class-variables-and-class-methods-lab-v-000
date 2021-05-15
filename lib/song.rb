class Song
attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = [ ]
  @@artists = [ ]
  
  def initialize(name, artist, genre)
    @@count+= 1
    @@genres = [ ] << genre unless @@genres.include?(genre)
    @@artists = [ ] << artist unless @@artists.include?(artist)
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

  def self.genre_count
    @@genre_count = {"genre" => count}
    genre_count
  end
  
  def self.artist_count
    @@artists = {"artist" => count}
    artists_count
  end

end
