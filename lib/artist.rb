class Artist
  attr_accessor :songs, :name, :genres

  ARTISTS = []

  def initialize
    @songs = []
    @genres = []
    ARTISTS << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @genres << song.genre if !@genres.include?(song.genre)
    song.genre.artists << self if song.genre && !song.genre.artists.include?(self)
  end

  def self.reset_artists
    ARTISTS.clear
  end

  def self.all
    ARTISTS
  end

  def self.count
    self.all.count
  end
end
