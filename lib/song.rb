require "pry"
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
    counter = 0
    genres_and_songs = {}
    @@genres.each do |g|
      binding.pry
      genres_and_songs[g] = 1

      #binding.pry

    end
    genres_and_songs
  end

end
