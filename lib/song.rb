class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist

    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      if unique_artists.include?(artist) == false
        unique_artists << artist
      end
    end
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      if unique_genres.include?(genre) == false
        unique_genres << genre
      end
    end
    unique_genres
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre] == nil
        genre_hash[genre] = 1
      else
        genre_hash[genre] = genre_hash[genre] + 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist] == nil
        artist_hash[artist] = 1
      else
        artist_hash[artist] = artist_hash[artist] + 1
      end
    end
    artist_hash
  end



end
