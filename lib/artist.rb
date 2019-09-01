class Artist
  @@all = []
  attr_reader :name

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|s| s.artist == self}
  end

  def new_song (song_name, song_genre)
    Song.new(song_name, self, song_genre)
  end
end
