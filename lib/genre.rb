class Genre
  attr_accessor :songs, :name, :artists

  GENRES = []

  def initialize
    @songs = []
    @artists = []
    @name = ""
    GENRES << self
  end

  def self.all
    GENRES
  end

  def self.count
    self.all.count
  end

  def self.reset_genres
    GENRES.clear
  end
end
