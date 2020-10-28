require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |e|
      if genre_count[e]
        genre_count[e] += 1
      else
        genre_count[e] = 1
      end
    end
    genre_count

  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |e|
      if artist_count[e]
        artist_count += 1
      else
        artist_count[e]
      end
    end
    artist_count
  end

end
