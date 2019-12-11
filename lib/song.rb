require 'pry'
class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(name)
    artist, song = name.split(" - ")
    new_song = Song.new(song)
    new_song.artist_name = artist

    def artist_name=
      self.artist = Artist.find_or_create_by_name(name)
    end
  end

end
