class Song
  attr_reader :genre
  attr_accessor :artist, :name

  def initialize
    @name = ""
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end
end
