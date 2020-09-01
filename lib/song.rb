class Song

  @@count = 0
  @@artists = []
  @@genres = []
  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end
  def self.artists
    u_artists = []
    @@artists.each do |a|
      if u_artists.include? a
      else
        u_artists << a
      end
    end
    u_artists
  end

  def self.genres
    u_genres = []
    @@genres.each do |g|
      if u_genres.include? g
      else
        u_genres << g
      end
    end
    u_genres
  end

  def self.genre_count
    genres_and_songs = {}
    @@genres.each do |g|
      if genres_and_songs.include? g
        genres_and_songs[g]
      else
        genres_and_songs[g]
      end
    end

  end

end
