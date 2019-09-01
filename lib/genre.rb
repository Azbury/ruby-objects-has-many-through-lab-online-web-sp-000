class Genre
  attr_reader :name
  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|s| s.genre == self}
  end

  def artists
    genre_artist = []
    Song.all.each do |s|
      genre_artist << s.artist if s.genre == self
    end
    genre_artist
  end
end
